<#macro page title>
    <!doctype html>
    <html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>${title}</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<#--        <#list css as stylesheet>-->
<#--            <link rel="stylesheet" href="/css/${stylesheet}.css">-->
<#--        </#list>-->
        <link rel="stylesheet" href="/style/main.css">

        <input type="hidden" value="${_csrf.token}" id="csrf-token">
    </head>
    <body>
    <div class="container-fluid p-0">
        <header>
            <div class="row justify-content-between">
                <div class="logo d-flex align-items-center">
                    ЖизньМарт <span>docs</span>
                </div>
            </div>
        </header>
    </div>
    <div class="container-xxl">
        <#nested>
    </div>
    </body>
    </html>
</#macro>