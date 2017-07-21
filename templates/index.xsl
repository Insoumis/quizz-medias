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

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" />

    <style type="text/css">
        body { padding-top: 70px; }

.question, .answer, .section, .incorrect, .correct { display: none; }

.progress {
    position: relative;
}

.progress span {
    position: absolute;
    display: block;
    width: 100%;
    color: black;
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
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <div>
        <h1>Quizz Médias</h1>
        <p class="lead">Use this document as a way to quickly start any new project.<br /> All you get is this text and a mostly barebones HTML document.</p>
      </div>

      <xsl:for-each select="/sections/section">
        <xsl:variable name="titre_section" select="./titre" />
        <xsl:variable name="nombre_questions" select="count(questions/question)" />

        <section class="section" id="{generate-id(.)}">
            <h1><xsl:value-of select="$titre_section" /></h1>

            <p><em><xsl:value-of select="./desc" /></em></p>

            <div class="progress">
              <xsl:variable name="pourcentage" select="100 * position() div $nombre_questions" />
              <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="{$nombre_questions}" style="width: {$pourcentage}%;" >
                <span><strong>1 / <xsl:value-of select="count(questions/question)" /></strong></span>
              </div>
            </div>
    
            <xsl:for-each select="./questions/question">
                <div class="question" id="{generate-id(.)}" data-pos="{position()}" data-count="{$nombre_questions}" >

                    <h2><xsl:value-of select="./titre" /></h2>
                    
                    <form>
                        <xsl:for-each select="./reponses/reponse">
                            <p><input type="radio" data-correct="{./@correct}" name="{generate-id(../..)}" /> <span><xsl:copy-of select="node()" /></span></p>
                        </xsl:for-each>

                        <div><button type="button" class="btn btn-primary btn-answer">Valider</button></div>
                    </form>

                    <div class="answer">
                        <div class="correct">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Bonne réponse :) 
                        </div>
                        <div class="incorrect">
                            <div><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Mauvaise réponse :( La bonne réponse était :</div>
                            <div>
                                <xsl:for-each select="./reponses/reponse">
                                <xsl:if test="./@correct = 1">
                                    <strong><xsl:copy-of select="node()" /></strong>
                                </xsl:if>
                                </xsl:for-each>
                            </div>
                        </div>
                        <div class="infos">
                            <xsl:copy-of select="./infos" />
                        </div>

                        <div><button type="button" class="btn btn-primary btn-next">Question suivante</button></div>
                    </div>
                    
                </div>
            </xsl:for-each>
        </section>
      </xsl:for-each>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/showdown/1.7.1/showdown.min.js"></script>

    <script type="text/javascript">
        current_question = '<xsl:value-of select="generate-id((//questions/question)[1])" />';
        current_section = '';

        function displayAnswer(correct)
        {
            $('#' + current_question + ' form').hide();
            $('#' + current_question + ' .answer').show();
            $('#' + current_question + ' .answer .' + (correct ? 'correct' : 'incorrect')).show();
        }

        function displayNextSection()
        {
            prev_section = current_section;
            current_section = $('#' + current_question).closest('section').attr('id');
            if(prev_section != current_section)
            {
                $('#' + prev_section).hide();
                $('#' + current_section).show();
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
                current_section = next_section;
                $('#' + current_section).show();
                current_question = $('#' + current_section + ' .question').first().attr('id');
                $('#' + current_question).show();
            }
            else
            {
                
                current_question = next_question;
                $('#' + current_question).show();
            }

            var cq = $('#' + current_question);
            $('#' + current_section + ' .progress-bar span strong').text(cq.data('pos') + ' / ' + cq.data('count'));
            $('#' + current_section + ' .progress-bar').css('width', 100*cq.data('pos')/cq.data('count') + '%');
        }

        function answerCurrentQuestion()
        {
            var correct = $('#' + current_question + ' input[type=radio]:checked').data('correct') == "1";
            displayAnswer(correct);
        }

        $( document ).ready(function() {
            $('.btn-answer').click(answerCurrentQuestion);
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
