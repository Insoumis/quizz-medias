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
    <meta property="og:site_name" content="Jeux de l'été" />
    <meta property="og:title" content="Jeux de l'été : êtes-vous dupe du Mélenchon-bashing ?" />
    <meta property="og:url" content="https://la-physis.fr/jeu-medias/" />
    <meta property="og:description" content="Jeu en 31 questions. Partagez votre score !" />
    <meta property="og:image" content="https://la-physis.fr/jeu-medias/images/an1.jpg" />
    <meta property="og:type" content="article" />
    <meta property="article:published_time" content="2017-07-25T16:20:13+02:00" />
    <meta property="article:tag" content="médias" />
    <meta property="article:tag" content="OPIAM" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:creator" content="@lucasgautheron" />

    <link rel="icon" href="../../favicon.ico" />

    <title>Jeux de l'été : êtes-vous dupe du Mélenchon-bashing ?</title>

    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-93713823-1', 'auto');
      ga('send', 'pageview');

    </script>

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
    margin: 20px auto;
    padding: 20px;
}

p.title {
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
    padding: 0;
    margin: 0;
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
    width: 90%;
    max-width: 800px;
    margin: auto;
}

.infos div, #score #comment {
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
    width: 100%;
    padding-top: 50px;
    max-width: 600px;
    height: 300px;
    margin: auto;
}

    </style>
  </head>

  <body>

    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Jouer</a></li>
            <li><a href="plus.html">Plus d'informations</a></li>
            <li><a href="mailto:rouslan.gauchet@gmail.com">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container" id="container">
      <!--<div>
        <h1>quiz Médias</h1>
        <p class="lead">Use this document as a way to quickly start any new project.<br /> All you get is this text and a mostly barebones HTML document.</p>
      </div>-->
      <div id="score_status">
        <div class="progress">
          <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="{count(//questions/question)}" style="width: 0px;" >
            <span><strong>0 / 0 réponse correcte</strong></span>
          </div>
        </div>
      </div>

      <div id="sections">
          <xsl:for-each select="/sections/section">
            <xsl:variable name="titre_section" select="./titre" />
            <xsl:variable name="nombre_questions" select="count(questions/question)" />
            <section class="section" id="{generate-id(.)}">
                <a name="{generate-id(.)}"></a>
                <h1><xsl:value-of select="$titre_section" /></h1>

                <p><em><xsl:value-of select="./desc" /></em></p>

                <div class="progress sub-progress">
                  <xsl:variable name="pourcentage" select="100 * position() div $nombre_questions" />
                  <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="{$nombre_questions}" style="width: {$pourcentage}%;" >
                    <span><strong>1 / <xsl:value-of select="count(questions/question)" /></strong></span>
                  </div>
                </div>

                <xsl:for-each select="./questions/question">
                    <xsl:variable name="input_type" select="if (count(reponses/reponse[@correct=1])  > 1) then 'checkbox' else 'radio'" />

                    <div class="question" id="{generate-id(.)}" data-pos="{position()}" data-count="{$nombre_questions}" >
                        <a name="{generate-id(.)}"></a>
                        <p class="title"><xsl:copy-of select="./titre/node()" /></p>

                        <form>
                            <xsl:for-each select="./reponses/reponse">
                                <div><input type="{$input_type}" autocomplete="off" data-correct="{./@correct}" name="{generate-id(../..)}" id="{generate-id(.)}" /> <label for="{generate-id(.)}"><xsl:copy-of select="node()" /></label></div>
                            </xsl:for-each>

                            <div><button type="button" class="btn btn-primary btn-answer">Valider</button></div>
                        </form>

                        <div class="answer">
                            <a name="answer-{generate-id(.)}"></a>
                            <div class="row">
                                <div class="correct">
                                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Bonne réponse :)
                                </div>
                                <div class="incorrect">
                                    <div><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Mauvaise réponse :( La bonne réponse était :</div>
                                    <div>
                                        <ul>
                                        <xsl:for-each select="./reponses/reponse[@correct=1]">
                                            <li><strong><xsl:copy-of select="node()" /></strong></li>
                                            <!--<xsl:if test="position() != last()">, </xsl:if>-->
                                        </xsl:for-each>
                                        </ul>
                                    </div>
                                </div>
                                <div class="infos">
                                    <xsl:copy-of select="./infos" />
                                </div>
                                <button type="button" class="btn btn-primary btn-next">Question suivante</button>
                            </div>

                        </div>
                    </div>
                </xsl:for-each>
            </section>
        </xsl:for-each>
    </div>

    <div id="score">
     <div class="progress">
      <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="{count(//questions/question)}" style="width: 0px;" >
        <span><strong>0 / 0 réponse correcte</strong></span>
      </div>
    </div>
    <div id="comment">
        
    </div>
    </div>

    <div id="share">
        Score à partager (clic-droit, enregistrer l'image) :
    </div>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/showdown/1.7.1/showdown.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script type="text/javascript">
        current_question = '<xsl:value-of select="generate-id((//questions/question)[1])" />';
        current_section = '';

        completed = 0;
        points = 0;

        function displayScore()
        {
            html2canvas(document.getElementById("score"), {
                onrendered: function(canvas) {
                    document.getElementById("container").appendChild(canvas);
                },
            });

            $('#score_status').hide();
            var comment = "";

            if(points/completed &lt; 0.25)
            {
                comment = "Bravo. Vous n'êtes pas tombé dans le piège démago-populiste de Mélenchon. Soyez tout de même prudent en effectuant régulièrement vos rappels de &lt;i&gt;Libération&lt;/i&gt;. Et n'oubliez pas : faites ce que vous voulez, mais votez Macron."; 
            }
            else if(points/completed &lt; 0.50)
            {
                comment = "Attention : vous semblez montrer des signes de \"&lt;a href=\"http://www.leparisien.fr/politique/melenchon-le-pen-la-tentation-populiste-21-04-2017-6872517.php\"&gt;tentation populiste&lt;/a&gt;\". Une petite cure de 7-9 de &lt;i&gt;France Inter&lt;/i&gt; tous les matins, et de &lt;i&gt;C à vous&lt;/i&gt; le soir, devrait vous apporter la dose quotidienne nécessaire de Patrick Cohen pour soigner votre \"cerveau malade\".";
            }
            else if(points/completed &lt; 0.75)
            {
                comment = "Vous semblez souffrir &lt;a href=\"http://www.lavoixdunord.fr/137322/article/2017-03-24/le-populisme-une-fievre-qui-s-installe\"&gt;d'une poussée de fièvre populiste&lt;/a&gt;. Peut-être une maladie endémique contractée lors d'un voyage au Vénézuela ? Vous avez besoin d'un environnement sain : éliminez tous les exemplaires de &lt;i&gt;Fakir&lt;/i&gt; ou du &lt;i&gt;Monde Diplomatique&lt;/i&gt; qui auraient pu trouver refuge dans votre maison. Prenez &lt;i&gt;Le Monde&lt;/i&gt; une fois par jour, et &lt;i&gt;l'Obs&lt;/i&gt; une fois par semaine.";
            }
            else
            {
                comment = "Vous ne voulez pas être manipulés par les médias : vous préférez être manipulés par votre \"gourou\" Mélenchon. Même un stage en centre de déradicalisation, en vue d'être \"traité\" par Nathalie Saint-Cricq en personne, ne pourrait vous sauver.";
            }

            $('#score .progress-bar span strong').text(points + ' / ' + completed + ' réponses correctes');
            $('#score .progress-bar').css('width', 100*points/completed + '%');

            $("#score #comment").html(comment);
            $("#score").show();
            $("#share").show();
        }

        function displayAnswer(correct)
        {
            $('#' + current_question + ' form').hide();
            $('#' + current_question + ' .answer').show();
            $('#' + current_question + ' .answer .' + (correct ? 'correct' : 'incorrect')).show();
            location.href = "#answer-"+current_question;
        }

        function displayNextSection()
        {
            prev_section = current_section;
            current_section = $('#' + current_question).closest('section').attr('id');
            if(prev_section != current_section)
            {
                $('#' + prev_section).hide();
                $('#' + current_section).show();
                location.href = "#"+current_section;
            }
        }

        function displayNextQuestion()
        {
            next_question = $('#' + current_question).next().attr('id');
            $('#' + current_question).hide();

            if (!next_question)
            {
                next_section = $('#' + current_section).next().attr('id');
                $('#' + current_section).hide();

                if (!next_section)
                {
                    displayScore();
                }
                else
                {
                    current_section = next_section;
                    $('#' + current_section).show();
                    current_question = $('#' + current_section + ' .question').first().attr('id');
                    $('#' + current_question).show();
                }
            }
            else
            {
                current_question = next_question;
                $('#' + current_question).show();
                location.href = "#"+current_question;
            }

            var cq = $('#' + current_question);
            $('#' + current_section + ' .progress-bar span strong').text(cq.data('pos') + ' / ' + cq.data('count'));
            $('#' + current_section + ' .progress-bar').css('width', 100*cq.data('pos')/cq.data('count') + '%');
        }

        function answerCurrentQuestion()
        {
            var correct = $('#' + current_question + ' input:checked').length == $('#' + current_question + ' input[data-correct=1]').length;

            $('#' + current_question + ' input[data-correct=1]').each(function(i) {
                correct = correct &amp;&amp; $(this).is(':checked');
            });

            completed++;
            if (correct)
                points++;

            $('#score_status .progress-bar span strong').text(points + ' / ' + completed + ' réponses correctes');
            $('#score_status .progress-bar').css('width', 100*points/completed + '%');

            displayAnswer(correct);
        }

        function imageSelect()
        {
            $('label img').css('border-color', '#333');
            $('label img').css('border-size', '1px');
            $(this).next('label').find('img').css('border-color', 'red');
            $(this).next('label').find('img').css('border-size', '3px');
        }

        $( document ).ready(function() {
            
            $('.btn-answer').click(answerCurrentQuestion);
            $('input[type=radio]').click(imageSelect);
            $('.btn-next').click(displayNextQuestion);
            current_section = $('#' + current_question).closest('section').attr('id');
            $('#' + current_question).closest('section').show();
            /* $('.question').hide(); */
            $('#' + current_question).show();
        });
    </script>
  </body>
</html>
    </xsl:template>
</xsl:stylesheet>
