<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/style/globals.css" />
    <link rel="stylesheet" href="/style/styleguide.css" />
    <link rel="stylesheet" href="/style/initiator-create-contract.css" />
    <link rel="stylesheet" href="/style/contract-editor.css" />
    <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/@editorjs/header@latest"></script>
    <script src="https://cdn.jsdelivr.net/npm/@editorjs/embed@latest"></script>
    <script src="https://cdn.jsdelivr.net/npm/@editorjs/editorjs@latest"></script>
    <script src="https://cdn.jsdelivr.net/npm/@editorjs/list@latest"></script>
    <script src="https://cdn.jsdelivr.net/npm/@editorjs/warning@latest"></script>
    <script src="https://cdn.jsdelivr.net/npm/@editorjs/marker@latest"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios@1.1.2/dist/axios.min.js"></script>

</head>
<body style="background: #f6f7f9">
<div class="desktop">
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
        <div class="frame-5">
            <a href="/initiator"><img class="vector" src="/image/initiator-main/vector.svg" /></a>
            <div class="text-wrapper-4">К выбору шаблона</div>
        </div>
        <div class="frame-6">
            <div class="frame-7">
                <#if isEditor??>
                    <div class="text-wrapper-5">Договор №${contract.id}</div>
                <#else>
                    <div class="text-wrapper-5">Шаблон “Договор поставки”</div>
                </#if>
            </div>
            <div class="frame-9">
                <div class="frame-10" style="padding: 1rem 3rem">
                    <div id="editorjs"></div>
                    <script src="/js/editor.js"></script>
                </div>
                <div class="frame-111">
                    <button type="button">Сохранить</button>
                    <#if isEditor??>
                        <button style="background: #b92d3c; color: #fff" onclick="saveContract()">Отозвать</button>
                    <#else>
                        <button style="background: #3F9E37; color: #fff" onclick="saveContract()">На проверку</button>
                    </#if>
                </div>
            </div>
        </div>
        <#if isEditor??>
        <div class="frame-11">
            <div class="frame-12">
                <div class="text-wrapper-13">Замечания к договору</div>
            </div>
            <div class="frame-14">
                <div class="frame-15">
                    <div class="text-wrapper-14">Необходимо исправить:</div>
                    <div class="frame-wrapper">
                        <div class="frame-16">
                            <div class="frame-17">
                                <p class="text-wrapper-15">Неверный формат, см. пункт 3.4.5</p>
                                <img class="icon-status" src="/image/initiator-main/icon-status-2.png" />
                            </div>
                            <div class="frame-17">
                                <div class="text-wrapper-15">Недостаточно информации</div>
                                <img class="icon-status" src="/image/initiator-main/icon-status.png" />
                            </div>
                            <div class="frame-18">
                                <div class="frame-20">
                                    <img class="img" src="/image/initiator-main/icon-clock.png" />
                                    <div class="text-wrapper-18">08.09.2023</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="frame-15">
                    <div class="text-wrapper-14">Комментарий к договору:</div>
                    <div class="frame-wrapper">
                        <div class="frame-16">
                            <div class="frame-17"><p class="text-wrapper-15">Неверный формат, см. пункт 3.4.5</p></div>
                            <div class="frame-17">
                                <div class="text-wrapper-15">Недостаточно информации</div>
                                <img class="icon-status" src="/image/initiator-main/icon-status.png" />
                            </div>
                            <div class="frame-18">
                                <div class="frame-20">
                                    <img class="img" src="/image/initiator-main/icon-clock.png" />
                                    <div class="text-wrapper-18">08.09.2023</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </#if>
    </div>
</div>
<script>

    editor.isReady
        .then(() => {
            editor.render({ blocks: ${contractText}.text.blocks})
        })
        .catch((reason) => {
            console.log(`Editor.js initialization failed because of ` + reason);
        });

    function saveContract() {
        editor.save().then(text => {
            axios.post('/initiator/create/save', {
                text
            }).then(() => {
                location.href = "/initiator"
            });
        })
    }

</script>
</body>
</html>
