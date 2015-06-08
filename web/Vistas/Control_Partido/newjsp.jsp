<%-- 
    Document   : newjsp
    Created on : 07/06/2015, 05:49:03 PM
    Author     : alum.fial7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://hostredeando.ucoz.es/js/prefixfree.js" type="text/javascript"></script>
        <style>
    .container {
        padding: 20px;width: 400px;
        text-align: center;
    }

    .timer {
        padding: 10px;
        background: #000000;
        overflow: hidden;
        display: inline-block;
        border: 7px solid #efefef;
        border-radius: 5px;
        position: relative;
        box-shadow:
            0 -2px 10px 1px rgba(0, 0, 0, 0.75),
            0 5px 20px -10px rgba(0, 0, 0, 1);

    }

    .cell {
        width: 0.60em;
        height: 40px;
        font-size: 50px;
        overflow: hidden;
        position: relative;
        float: left;
    }

    .numbers {
        width: 0.6em;
        line-height: 40px;
        font-family: digital, arial, verdana;
        text-align: center;
        color: #fff;

        position: absolute;
        top: 0;
        left: 0;


        text-shadow: 0 0 5px rgba(255, 255, 255, 1);
    }

    #timer_controls {
        margin-top: 5px;
    }
    #timer_controls label {
        box-shadow:
            0 -2px 10px 1px rgba(0, 0, 0, 0.75),
            0 5px 20px -10px rgba(0, 0, 0, 1);

        cursor: pointer;
        padding: 5px 10px;
        background: #efefef;
        font-family: arial, verdana, tahoma;
        font-size: 11px;
        border-radius: 0 0 3px 3px;border:1px solid #989293;
    }
    input[name="controls"] {display: none;}


    #stop:checked~.timer .numbers {animation-play-state: paused;}
    #start:checked~.timer .numbers {animation-play-state: running;}
    #reset:checked~.timer .numbers {animation: none;}

    .moveten {
        /*The digits move but dont look good. We will use steps now
        10 digits = 10 steps. You can now see the digits swapping instead of
        moving pixel-by-pixel*/
        animation: moveten 1s steps(10, end) infinite;
        /*By default animation should be paused*/
        animation-play-state: paused;
    }
    .movesix {
        animation: movesix 1s steps(6, end) infinite;
        animation-play-state: paused;
    }

    .second {animation-duration: 10s;}
    .tensecond {animation-duration: 60s;} /*60 times .second*/

    .milisecond {animation-duration: 1s;} /*1/10th of .second*/
    .tenmilisecond {animation-duration: 0.1s;}
    .hundredmilisecond {animation-duration: 0.01s;}

    .minute {animation-duration: 600s;} /*60 times .second*/
    .tenminute {animation-duration: 3600s;} /*60 times .minute*/

    .hour {animation-duration: 36000s;} /*60 times .minute*/
    .tenhour {animation-duration: 360000s;} /*10 times .hour*/

    @keyframes moveten {
        0% {top: 0;}
        100% {top: -400px;}
        /*height = 40. digits = 10. hence -400 to move it completely to the top*/
    }

    @keyframes movesix {
        0% {top: 0;}
        100% {top: -240px;}
        /*height = 40. digits = 6. hence -240 to move it completely to the top*/
    }

    @font-face {
        font-family: 'digital';
        src: url('http://thecodeplayer.com/uploads/fonts/DS-DIGI.TTF');

    </style>
    </head>
    <body>
    <center><div class="container">
            <input id="start" name="controls" type="radio" />
            <input id="stop" name="controls" type="radio" />
            <input id="reset" name="controls" type="radio" />
            <div class="timer">
                <div class="cell">
                    <div class="numbers tenhour moveten">0 1 2 3 4 5 6 7 8 9</div>
                </div>
                <div class="cell">
                    <div class="numbers hour moveten">0 1 2 3 4 5 6 7 8 9</div>
                </div>
                <div class="cell divider"><div class="numbers">:</div></div>
                <div class="cell">
                    <div class="numbers tenminute movesix">0 1 2 3 4 5 6</div>
                </div>
                <div class="cell">
                    <div class="numbers minute moveten">0 1 2 3 4 5 6 7 8 9</div>
                </div>
                <div class="cell divider"><div class="numbers">:</div></div>
                <div class="cell">
                    <div class="numbers tensecond movesix">0 1 2 3 4 5 6</div>
                </div>
                <div class="cell">
                    <div class="numbers second moveten">0 1 2 3 4 5 6 7 8 9</div>
                </div>
                <div class="cell divider"><div class="numbers">:</div></div>
                <div class="cell">
                    <div class="numbers milisecond moveten">0 1 2 3 4 5 6 7 8 9</div>
                </div>
                <div class="cell">
                    <div class="numbers tenmilisecond moveten">0 1 2 3 4 5 6 7 8 9</div>
                </div>
                <div class="cell">
                    <div class="numbers hundredmilisecond moveten">0 1 2 3 4 5 6 7 8 9</div>
                </div>
            </div>
            <div id="timer_controls">
                <label for="start">Start</label>
                <label for="stop">Stop</label>
                <label for="reset">Reset</label>
            </div>
        </div></center>
</body>
</html>