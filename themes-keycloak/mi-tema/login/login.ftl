<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">
</head>
<body>

<div class="container">
    <div class="card">

        <h1>Bienvenido</h1>
        <p class="subtitle">Ingresá a tu cuenta</p>

        <form action="${url.loginAction}" method="post">
            <input type="text" name="username" placeholder="Email" />
            <input type="password" name="password" placeholder="Contraseña" />

            <button type="submit">Iniciar sesión</button>
        </form>

        <div class="divider">
            <span>o continuar con</span>
        </div>

        <div class="social-login">
            <#if social.providers??>
                <#list social.providers as p>
                    <a class="social-btn" href="${p.loginUrl}">
                        <img src="${p.iconUrl}">
                        ${p.displayName}
                    </a>
                </#list>
            </#if>
        </div>

    </div>
</div>

</body>
</html>
