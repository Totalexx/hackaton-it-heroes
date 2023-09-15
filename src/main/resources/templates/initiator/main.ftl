<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/style/globals.css" />
    <link rel="stylesheet" href="/style/styleguide.css" />
    <link rel="stylesheet" href="/style/initiator-main.css"/>
    <link rel="stylesheet" href="/style/initiator-modal.css"/>
</head>
<body>
<div class="modal fade" id="modal-create" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-scrollable modal-dialog-centered">
        <div class="modal-content align-items-center">
            <div class="create-template">
                <div class="frame">
                    <div class="text-wrapper">Выберите шаблон договора</div>
                    <div class="div">
                        <div class="frame-2">
                            <div class="text-wrapper-2">Договор подряда</div>
                            <a href="/initiator/create/contract/real">
                                <img class="vector" src="/image/initiator-main/vector-3.svg" />
                            </a>
                        </div>
                        <div class="frame-2">
                            <div class="text-wrapper-3">Договор продажи оборудования</div>
                            <a href="/initiator/create/contract">
                                <img class="vector" src="/image/initiator-main/vector-3.svg" />
                            </a>
                        </div>
                        <div class="frame-2">
                            <div class="text-wrapper-2">Договор поставки</div>
                            <a href="/initiator/create/contract">
                                <img class="vector" src="/image/initiator-main/vector-3.svg" />
                            </a>
                        </div>
                        <div class="frame-2">
                            <div class="text-wrapper-2">Договор счёта эскроу</div>
                            <a href="/initiator/create/contract">
                                <img class="vector" src="/image/initiator-main/vector-3.svg" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="desktop-initiator">
    <div class="div">
        <div class="frame">
            <img class="icon-notification" src="/image/initiator-main/icon-notification-circle.png" />
            <div class="frame-2">
                <div class="frame-3">
                    <img class="icon-profile-circle" src="/image/initiator-main/icon-profile-circle.png" />
                    <div class="text-wrapper">${_user.name} ${_user.surname}</div>
                </div>
                <img class="icon-arrow-down" src="/image/initiator-main/icon-arrow-down-2.png" />
            </div>
            <div class="frame-4">
                <div class="text-wrapper-2" style="font-family:'Unbounded'">ЖизньМарт</div>
                <div class="div-wrapper"><div class="text-wrapper-3" style="width: auto; height: auto; margin: 0">doc</div></div>
            </div>
        </div>
        <div class="frame-wrapper">
            <button data-bs-toggle="modal" data-bs-target="#modal-create" class="frame-5" style="border: none; background: none">
                <div class="union-wrapper"><img class="union" src="/image/initiator-main/union.png" /></div>
                <div class="text-wrapper-4">Создать договор</div>
            </button>
        </div>
<#--        <div class="frame-6">-->
<#--            <div class="frame-7">-->
<#--                <div class="frame-8">-->
<#--                    <div class="frame-9"><div class="text-wrapper-5">Договор №345</div></div>-->
<#--                    <img class="icon-arrow-circle" src="/image/initiator-main/icon-arrow-circle-right-2.png" />-->
<#--                </div>-->
<#--                <div class="frame-10">-->
<#--                    <p class="p">Поставка фруктов в сеть магазинов</p>-->
<#--                    <img class="group" src="/image/initiator-main/group-1-2.png" />-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--        <div class="frame-11">-->
<#--            <div class="frame-7">-->
<#--                <div class="frame-8">-->
<#--                    <div class="frame-9"><div class="text-wrapper-5">Договор №346</div></div>-->
<#--                    <img class="icon-arrow-circle" src="/image/initiator-main/icon-arrow-circle-right-2.png" />-->
<#--                </div>-->
<#--                <div class="frame-10">-->
<#--                    <p class="p">Поставка фруктов в сеть магазинов</p>-->
<#--                    <img class="group" src="/image/initiator-main/group-1-1.png" />-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
        <div class="frame-12">
            <div class="frame-13">
                <div class="text-wrapper-6">Мои договоры</div>
                <div class="frame-14">
                    <div class="text-wrapper-7">За все время</div>
                    <img class="img" src="/image/initiator-main/icon-arrow-down.png" />
                </div>
            </div>
            <div class="frame-10">
            <#if contracts??>
                <#list contracts as contract>
                <a href="/contract/${contract.id}">
                    <div class="frame-15">
                        <div class="frame-16">
                            <div class="frame-17">
                                <img class="icon-document" src="/image/initiator-main/icon-document.png" />
                                <p class="text-wrapper-8">Договор №${contract.id}</p>
                            </div>
                        </div>
                        <div class="frame-18">
                            <div class="frame-20">
                                <div class="frame-21">
                                    <img class="img-2" src="/image/initiator-main/icon-clock-2.png" />
                                    <div class="text-wrapper-9">15.09.2023</div>
                                </div>
                            </div>
                            <div class="frame-22">
                                <div class="frame-23">
                                    <#if contract.lastContractStatus.contractCheckResult.toString() == "ACCEPTED">
                                        <img class="img-2" src="/image/initiator-main/icon-status-3.png" />
                                        <div class="text-wrapper-10">Подписан</div>
                                    <#elseif contract.lastContractStatus.contractCheckResult.toString() == "REJECTED">
                                        <img class="img-2" src="/image/initiator-main/icon-status.png" />
                                        <div class="text-wrapper-10">Отклонен</div>
                                    <#else>
                                        <img class="img-2" src="/image/initiator-main/icon-status-1.png" />
                                        <div class="text-wrapper-10">В обработке</div>
                                    </#if>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                </#list>
            </#if>
            </div>
        </div>
<#--        <div class="frame-24">-->
<#--            <div class="text-wrapper-6">Мои уведомления</div>-->
<#--            <div class="frame-14">-->
<#--                <div class="text-wrapper-7">За все время</div>-->
<#--                <img class="img" src="/image/initiator-main/icon-arrow-down.png" />-->
<#--            </div>-->
<#--        </div>-->
<#--        <div class="frame-25">-->
<#--            <div class="frame-26">-->
<#--                <div class="frame-27">-->
<#--                    <div class="text-wrapper-11">Вы получили новый комментарий</div>-->
<#--                    <div class="frame-28">-->
<#--                        <div class="frame-29">-->
<#--                            <div class="frame-30">-->
<#--                                <p class="text-wrapper-12">-->
<#--                                    Здравствуйте! Ознакомился с договором и у меня возникло пару вопросов к содержанию-->
<#--                                </p>-->
<#--                            </div>-->
<#--                            <div class="frame-31">-->
<#--                                <div class="frame-18">-->
<#--                                    <div class="frame-32"><div class="text-wrapper-5">Договор №345</div></div>-->
<#--                                    <div class="frame-18">-->
<#--                                        <div class="frame-33">-->
<#--                                            <img class="img-3" src="/image/initiator-main/group.png" />-->
<#--                                            <div class="text-wrapper-13">Иванов И.И</div>-->
<#--                                        </div>-->
<#--                                    </div>-->
<#--                                </div>-->
<#--                                <div class="frame-33">-->
<#--                                    <img class="img-3" src="/image/initiator-main/icon-clock.png" />-->
<#--                                    <div class="text-wrapper-14">15.09.2023</div>-->
<#--                                </div>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <img class="frame-34" src="/image/initiator-main/frame-66-1.png" />-->
<#--            </div>-->
<#--            <div class="frame-26">-->
<#--                <div class="frame-27">-->
<#--                    <div class="text-wrapper-11">Вы получили новый комментарий</div>-->
<#--                    <div class="frame-28">-->
<#--                        <div class="frame-29">-->
<#--                            <div class="frame-30">-->
<#--                                <p class="text-wrapper-12">-->
<#--                                    Здравствуйте! Ознакомился с договором и у меня возникло пару вопросов к содержанию-->
<#--                                </p>-->
<#--                            </div>-->
<#--                            <div class="frame-31">-->
<#--                                <div class="frame-18">-->
<#--                                    <div class="frame-32"><div class="text-wrapper-5">Договор №345</div></div>-->
<#--                                    <div class="frame-18">-->
<#--                                        <div class="frame-33">-->
<#--                                            <img class="img-3" src="/image/initiator-main/group.png" />-->
<#--                                            <div class="text-wrapper-13">Иванов И.И</div>-->
<#--                                        </div>-->
<#--                                    </div>-->
<#--                                </div>-->
<#--                                <div class="frame-33">-->
<#--                                    <img class="img-3" src="/image/initiator-main/icon-clock.png" />-->
<#--                                    <div class="text-wrapper-14">15.09.2023</div>-->
<#--                                </div>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <img class="frame-34" src="/image/initiator-main/frame-66.svg" />-->
<#--            </div>-->
<#--        </div>-->
    </div>
</div>
</body>
</html>
