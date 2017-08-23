@charset "UTF-8";
/* CSS Document */

body {
  margin:0 auto;

  font-size:16px;
  line-height:18px;
  font-family: 'Open Sans', sans-serif;
  background-image:url(https://imagenes.paris.cl/is/image/Cencosud/bg_form2d-inscripcion2017?$full-jpeg$);
  background-position:top right;
  background-repeat:no-repeat;

  background-position-y:90px;
  /*background-position-x: 170px;*/

}


#container {
  max-width: 1000px;
  margin: 0 auto;
  background: #EEE;
}

#fvpp-blackout {
  display: none;
  z-index: 499;
  position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background: #000;
  opacity: 0.5;
}

#my-welcome-message {
  display: none;
  z-index: 500;
  position: fixed;
  width: 88%;
  left: 6%;
  top: 5%;
/*  padding: 20px 2%;*/
  background: #FFF;
}

#my-welcome-message iframe{
	border:0;
	height:670px;
}

#fvpp-close {
  position: absolute;
  top: 10px;
  right: 20px;
  cursor: pointer;
}

#legal{
  color:#000;
}