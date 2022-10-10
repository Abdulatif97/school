<div class="col-md-3">

            <div class="card">
                <div class="card-header">
                    Меню
                </div>

                <div class="card-body">
                    <ul class="nav flex-column" role="tablist">

                        <li class="nav-item" role="presentation">
                            <a class="nav-link" href="/teacher/dashboard">
                                Панель
                            </a>
                        </li>
                        @can('users')
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" href="/admin/users">
                                Пользователи
                            </a>
                        </li>
                        @endcan
                        @can('roles')
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" href="/admin/roles">
                                    Роли
                                </a>
                            </li>
                        @endcan
                        @can('permissions')
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" href="/admin/permissions">
                                    Разрешения
                                </a>
                            </li>
                        @endcan
                        @can('subjects')
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" href="/admin/subjects">
                                    Предметы
                                </a>
                            </li>
                        @endcan
                        @can('groups')
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" href="/admin/groups">
                                    Группы
                                </a>
                            </li>
                        @endcan
                        @can('ratings')
                            <li class="nav-item" role="presentation">
                            <a class="nav-link" href="/admin/ratings">
                                Оценки
                            </a>
                        </li>
                        @endcan

                    </ul>
                    @if(false)
                     <ul class="nav flex-column" role="tablist">
                        @foreach($section->items as $menu)
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" href="{{ url($menu->url) }}">
                                    {{ $menu->title }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                    @endif
                </div>
            </div>
            <br/>

</div>
