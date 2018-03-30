<?php

/*******************************************************************************************************
 **              Classe UserController
 **
 **--------------Informação do Arquivo -----------------------------------------------------------------
 ** Nome do Arquivo:          UserController.php
 ** Data Ultima Modificação:  29-03-2018
 ** Ultima Versão:            Sim
 ** Descrição:                Classe controladora CRUD usuarios (Api restful).
 **------------------------------------------------------------------------------------------------------
 ** Criado por:          Maylon Zanardi <maylonzanardi@hotmail.com>
 ** Data de Criação:     29-03-2018
 ********************************************************************************************************/

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Validator;

class UserController extends Controller
{

    /*********************************************************************************************************
     ** Nome da Função:       show
     ** Descrição:            Função que exibe dados de um usuario pelo id.
     ** Parametro:            id = id do usuario.
     ** Valor de retorno:     Dados usuario em json.
     *********************************************************************************************************/
    public function show($id)
    {
        //Verifica se não existe um usuario autenticado.
       if(is_null(Auth::user())){

           //Busca usuario no BD pelo id passado por parametro.
           $users = User::find($id);

           //Caso nenhum usuario encontrado retorna mensagem de erro.
           if(!$users) {
               return response()->json([
                   'message'   => 'Registro não encontrado',
                   'http_status' => '404',
               ], 404);
           }

           //Transforma o objeto em array.
           $arrayUser = $users->toArray();

           //Loop para mascarar os valores do array de usuario fora da requisição.
           foreach ($arrayUser as $key => $value){
               $arrayUser[$key] = $this->mask(strval($value));
           }

           //Retorna dados mascarados do usuario em json.
           return response()->json($arrayUser);
       }

        //Verifica se o usuario possui permissões admin de visualizar usuarios.
        if(Auth::user()->tokenCan('get-user-admin')){

            //Busca usuario no BD pelo id passado por parametro.
            $users = User::find($id);

        //Se não existir permissões admin, verifica se possui permissões de visualizar o proprio usuario.
        }elseif (Auth::user()->tokenCan('get-user')){

            //Se id passado por parametro for diferente do id do usuario autenticado retorna mensagem de sem autorização com status code Unauthorized..
            if($id != Auth::user()->id){
                return response()->json([
                    'message'   => 'Usuario sem autorização!',
                    'http_status' => '401',
                ], 401);
            }else{
                $users = User::find(Auth::user()->id);
            }
        }

        //Se nenhum usuario encontrado retorna mensagem de erro com status code Not Found.
        if(!$users) {
            return response()->json([
                'message'   => 'Registro não encontrado',
                'http_status' => '404',
            ], 404);
        }

        //Retorna dados do usuario em json.
        return response()->json($users);
    }

    /*********************************************************************************************************
     ** Nome da Função:       store
     ** Descrição:            Função que cria um novo usuario.
     ** Parametro:            request = dados da requisição enviada.
     ** Valor de retorno:     Dados usuario criado em json.
     *********************************************************************************************************/
    public function store(Request $request)
    {
        //Instancia um novo usuario passando os valores recebidos pela requisição.
        $users = new User();

        //Chama função que valida se todos os dados foram enviados
        $this->validadeData($request);

        //Preenche os dados do novo usuario com os da requisição
        $users->fill($request->all());

        //Transforma o senha em um Hash
        $users->password = Hash::make($request->password);

        //Salva os dados no banco.
        $users->save();

        //Retorna dados do usuario em json e status code Created.
        return response()->json($users, 201);
    }

    /*********************************************************************************************************
     ** Nome da Função:       update
     ** Descrição:            Função que edita um usuario pelo id.
     ** Parametro:            request, id = dados da requisição enviada, id do usuario.
     ** Valor de retorno:     Dados usuario editado em json ou mensagem de falha (Usuario não autenticado ou
     **                       registro não encontrado).
     *********************************************************************************************************/
    public function update(Request $request, $id)
    {
        //Verifica se o usuario possui permissões admin de editar usuarios.
        if(Auth::user()->tokenCan('edit-user-admin')){

            //Busca usuario no BD pelo id passado por parametro.
            $users = User::find($id);

        //Se não existir permissões admin, verifica se possui permissões de editar o proprio usuario.
        }elseif (Auth::user()->tokenCan('edit-user')){

            //Se id passado por parametro for diferente do id do usuario autenticado retorna mensagem de sem autorização com status code Unauthorized.
            if($id != Auth::user()->id){
                return response()->json([
                    'message'   => 'Usuario sem autorização!',
                    'http_status' => '401',
                ], 401);
            }else{
                $users = User::find(Auth::user()->id);
            }
        }

        //Chama função que valida se todos os dados foram enviados
        $this->validadeData($request);

        //Se nenhum usuario encontrado retorna mensagem de erro com status code Not Found.
        if(!$users) {
            return response()->json([
                'message'   => 'Registro não encontrado',
                'http_status' => '404',
            ], 404);
        }

        //Preenche os novos dados do usuario com os da requisição
        $users->fill($request->all());

        //Transforma o senha em um Hash
        $users->password = Hash::make($request->password);

        //Salva os dados no banco
        $users->save();

        //Retorna dados do usuario em json
        return response()->json($users);
    }

    /*********************************************************************************************************
     ** Nome da Função:       destroy
     ** Descrição:            Função que remove um usuario pelo id.
     ** Parametro:            id =  id do usuario.
     ** Valor de retorno:     Mensagem de sucesso na remoção em json ou mensagem de falha (Usuario não
     **                       autenticado ou registro não encontrado).
     *********************************************************************************************************/
    public function destroy($id)
    {
        //Verifica se o usuario possui permissões admin de deletar usuarios.
        if(Auth::user()->tokenCan('delete-user-admin')){

            //Busca usuario no BD pelo id passado por parametro.
            $users = User::find($id);

        //Se não existir permissões admin, verifica se possui permissões de deletar o proprio usuario.
        }elseif (Auth::user()->tokenCan('delete-user')){

            //Se id passado por parametro for diferente do id do usuario autenticado retorna mensagem de sem autorização com status code Unauthorized.
            if($id != Auth::user()->id){
                return response()->json([
                    'message'   => 'Usuario sem autorização!',
                    'http_status' => '401',
                ], 401);
            }else{
                $users = User::find(Auth::user()->id);
            }
        }

        //Se nenhum usuario encontrado retorna mensagem de erro com status code Not Found.
        if (!$users) {
            return response()->json([
                'message'   => 'Registro não encontrado',
                'http_status' => '404',
            ], 404);
        }

        $username = $users->name;

        //Deleta o usuario no banco.
        $users->delete();

        //Retorna mensagem de sucesso na remoção do usuario.
        return response()->json([
            'message'   => 'Usuario '.$username.' deletado com sucesso!',
        ]);
    }

    /*********************************************************************************************************
     ** Nome da Função:       mask
     ** Descrição:            Função que mascara os dados de uma variavel.
     ** Parametro:            string = variavel enviada em formato string para ser mascarada.
     ** Valor de retorno:     Variavel com caracteres modificados para * randomicamente.
     *********************************************************************************************************/
    function mask($str){

        //Armazena o tamanho da string.
        $sizestr = strlen($str);

        //Se menor igual a 1 apenas modifica o primeiro caractere.
        if ($sizestr <= 1){
            $mask = '*';
            return $mask;
        }
        //Gera um numero random de 1 até o tamanho da string.
        $numrand = mt_rand ( 1 , $sizestr );
        $carater="*";

        //Modifica a variavel acrecentando * de acordo com o numero random e atribue na variavel $mask.
        $nome=substr($str, $numrand, $sizestr);
        $mask = str_pad($nome, $sizestr, $carater, STR_PAD_LEFT);

        //Retorna a variavel mascarada.
        return $mask;
    }

    /*********************************************************************************************************
     ** Nome da Função:       validateData
     ** Descrição:            Função que valida os dados de requisições update e create.
     ** Parametro:            inputs = variavel que recebe todos os parametros da requisição.
     ** Valor de retorno:     Retorna erro em json caso algum dos dados não seja enviado.
     *********************************************************************************************************/
    public function validadeData($inputs){

        //Valida os dados e retorna erro em json caso algum dado não seja passado corretamente conforme as regras.
        $validator = $inputs->validate([
            'name'       => 'required',
            'email'      => 'required',
            'username'   => 'required',
            'password'   => 'required',
       ]);

    }

}
