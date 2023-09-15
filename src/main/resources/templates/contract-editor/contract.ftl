<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/style/globals.css" />
    <link rel="stylesheet" href="/style/styleguide.css" />
    <link rel="stylesheet" href="/style/initiator-create-contract.css" />
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
                    <div class="text-wrapper">Анна Иванова</div>
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
                <#if isEditor>
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
                <div class="frame-11">
                    <button type="button">Сохранить</button>
                    <button style="background: #3F9E37; color: #fff" onclick="saveContract()">На проверку</button>
                </div>
            </div>
        </div>
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
