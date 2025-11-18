[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    [#--<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
--]
    <title>Potvrzení registrace na tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<main>
    <h1 class="form-title">Potvrzení registrace na tábor</h1>


    <form action="/" method="get">
        <span class="form-span">Jméno dítěte: ${formular.jmeno}</span>
        <span class="form-span">Příjmení dítěte: ${formular.prijmeni}</span>
        <span class="form-span">Datum narození: ${formular.datumNarozeni?date}</span>
        <span class="form-span">Pohlaví: [#if formular.gender == "1"]žena[/#if]
            [#if formular.gender == "2"]muž[/#if]
            [#if formular.gender == "3"]zatím nespecifikováno[/#if]</span>
        <span class="form-span">Turnus:
            [#if formular.turnus == "1"]1.-14.7.2026[/#if]
            [#if formular.turnus == "2"]15.-30.7.2026[/#if]
            [#if formular.turnus == ""]1.-14.8.2026[/#if]
        </span>
        <span class="form-span">Email na rodiče: ${formular.email}</span>
        <span class="form-span">Telefon na rodiče: ${formular.telefon}</span>


    </form>
</main>
</body>
</html>
