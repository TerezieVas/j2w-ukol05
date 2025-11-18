[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    [#--<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
--]
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div>
    <main>
        <form action="/" method="post">
        <h1 class="form-title">Registrace na letní dětský tábor</h1>

            <label for="jmeno" class="form-label">Jméno dítěte:</label>
            [@spring.formInput path="formular.jmeno" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="prijmeni" class="form-label">Příjmení dítěte:</label>
            [@spring.formInput path="formular.prijmeni" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="datumNarozeni" class="form-label">Datum narození dítěte:</label>
            [@spring.formInput path="formular.datumNarozeni" fieldType="date"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="pohlavi" class="form-label">Pohlaví dítěte:</label>
            [@spring.formSingleSelect path="formular.gender" options={
            "": "vyberte:",
            "1": "žena",
            "2": "muž",
            "3": "zatím nespecifikované"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="turnus" class="form-label">Turnus:</label>
            [@spring.formSingleSelect path="formular.turnus" options={
            "": "vyberte:",
            "1": "1.7.-14.7.2026",
            "2": "15.7.-30.7.2026",
            "3": "1.8.-15.8.2026"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="email" class="form-label">E-mail:</label>
            [@spring.formInput path="formular.email" fieldType="email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <label for="telefon" class="form-label">Telefon:</label>
            [@spring.formInput path="formular.telefon" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <div class="form-button">
                <button type="submit">Registrovat</button>
            </div>

        </form>
    </main>
</div>
</body>
</html>
