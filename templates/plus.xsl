<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs">

<xsl:template match="/">
<html lang="fr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="../../favicon.ico" />

    <title>Quizz médias</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" />

    <style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Montserrat');
@import url('https://fonts.googleapis.com/css?family=Roboto:400,700');

body {
    color: #333;
    font-family: Roboto, sans-serif;
    font-size: 1.8em;
    padding-top: 100px;
}

h1 {
    font-family: Montserrat, sans-serif;
    margin-top: 60px;
}

.navbar {
    background: #c9462c;
    border-bottom: 1px solid #bc4229;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    font-family: Montserrat, sans-serif;
    font-size: 0.8em;
}

.navbar-default .navbar-brand,
.navbar-default .navbar-nav>li>a,
.navbar-default .navbar-nav>.active>a,
.navbar-default .navbar-nav>.active>a:focus,
.navbar-default .navbar-nav>.active>a:hover,
.navbar-default .navbar-nav>li>a:focus,
.navbar-default .navbar-nav>li>a:hover,
.navbar-default .navbar-brand:focus, .navbar-default .navbar-brand:hover {
    color: #fff;
    border-bottom: 3px solid transparent;
    text-shadow: 0 1px 2px rgba(0,0,0, 0.4);
    transition: .2s;
}
.navbar-default .navbar-nav>.active>a,
.navbar-default .navbar-nav>.active>a:focus,
.navbar-default .navbar-nav>.active>a:hover,
.navbar-default .navbar-nav>li>a:focus,
.navbar-default .navbar-nav>li>a:hover {
    background: none;
    border-bottom: 3px solid #fff;
    box-shadow: none;
}

.progress {
    height: 30px;
    position: relative;
}

.progress span {
    color: #004e65;
    display: block;
    font-family: Montserrat, sans-serif;
    font-size: 1.2em;
    line-height: 30px;
    position: absolute;
    text-shadow: 0 1px 1px rgba(255,255,255, 0.6);
    width: 100%;
}

.progress-bar-success {background: #33b9d3;}

.subtitle {margin-bottom: 20px;}

.sub-progress span {color: #560000;}

.sub-progress .progress-bar {background: #d1270c;}

.question {
    border-radius: 8px;
    box-shadow: 0 2px 12px rgba(0,0,0,.12);
    margin: 40px auto;
    padding: 40px;
}

h2 {
    font-family: Montserrat, sans-serif;
    margin: 0 0 30px;
}

form, input {
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
}

form {margin: 0; margin-left: 40px;}

label, input {
    display: inline-block;
    vertical-align: baseline;
}

label {
    font-weight: normal;
    line-height: 1.9em;
    padding-left: 0.5em;
}

.btn-primary {
    background: #33b9d3;
    border: 0;
    display: block;
    margin: 35px auto 0;
    padding: 6px 60px;
    transition: .2s;
}

.btn-primary:hover {background: #1b90a7;}

.answer {
    margin-top: 60px;
    text-align: center;
}

.glyphicon-ok {color: #33b9d3;}
.glyphicon-remove {color: #d1270c;}

.answer ul {
    list-style: none;
    margin: 10px 0;
    padding: 0;
}

.infos {
    width: 50%;
    margin: auto;
}

.infos div, #about {
    background: #f5f5f5;
    padding: 20px;
    border-radius: 4px;
    margin-top: 35px;
}

.infos a {color: #33b9d3;}

label img {
    border: 1px solid #333;
    border-radius: 4px;
}
.answer img { max-width: 90%; }

.question, .answer, .section, .incorrect, .correct, #score, #share { display: none; }

#score {
    padding-top: 50px;
    width: 600px;
    height: 300px;
    margin: auto;
}

    </style>
  </head>

  <body>

    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">Quizz Médias</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="index.html">Jouer</a></li>
            <li class="active"><a href="plus.html">Plus d'informations</a></li>
            <li><a href="mailto:rouslan.gauchet@gmail.com">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container" id="container">
      <div class="about">
        <p>Dénoncer la violence médiatique contre notre mouverment et les personnalités qui le représentent, ce n'est pas une "stratégie de victimisation" : c'est simplement faire le constat que la presse est de fait, pour nous, un adversaire politique. Cet intérêt pour les médias n'est donc pas de se présenter en martyrs du "système". Il s'agit plutôt de pointer les mécanismes qui font d'eux non pas le "quatrième pouvoir", mais bien la "deuxième peau du système", en nous empêchant de penser hors du cadre dans lequel nous évoluons. Ce petit jeu tente, sur la base de l'immense travail de l'<a href="https://opiam.fr/">OPIAM</a>, de faire réfléchir par l'humour aux prises de positions, injures et hypocrisies de cette presse qui ne veut pas s'admettre comme militante.</p>
      </div>

      <div class="about">
        <ul>
            <li><a href="https://la-physis.fr/">Rouslan Gauchet</a></li>
            <li>L'administrateur de l'<a href="https://opiam.fr/">OPIAM</a></li>
            <li>Snae</li>
            <li>FabLab</li>
        </ul>
      </div>
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>
    </xsl:template>
</xsl:stylesheet>
