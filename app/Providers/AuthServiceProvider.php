<?php

namespace App\Providers;

use Laravel\Passport\Passport;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Passport::routes();

        //Permissões de usuarios.
        Passport::tokensCan([
           'get-user-admin'     => 'Permite visualizar usuarios          (Admin)',
           'edit-user-admin'    => 'Permite editar usuarios              (Admin)',
           'delete-user-admin'  => 'Permite deletar usuarios             (Admin)',
           'get-user'           => 'Permite visualizar um usuario logado (User)',
           'edit-user'          => 'Permite editar um usuario logado     (User)',
           'delete-user'        => 'Permite deletar um usuario logado    (User)'
        ]);
    }
}
