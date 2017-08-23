@charset "UTF-8";
/* CSS Document */

body{
  margin:0 auto;

  font-size:16px;
  line-height:18px;
  font-family: 'Open Sans', sans-serif;
  background-image:url(https://imagenes.paris.cl/is/image/Cencosud/bg_form3c-inscripcion2017?$full-jpeg$);
  background-position:top left;
  background-repeat:no-repeat;

  background-size: 150%;
  background-position-y: 90px;
  /*background-position-x: -10px;*/
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
	height:510px;
}


#fvpp-close {
  position: absolute;
  top: 10px;
  right: 20px;
  cursor: pointer;
}

#cuerpo2 {
    width: 90%;
    margin: 230px auto 0 auto;
    padding: 5% 5%;
}

h1 {
    color: #f27925;
    float: left;
    font-weight: 300;
    font-size: 34px;
    line-height: 38px;
    margin: 0 0 20px 0;
    width: 100%;
}

h2 {
    color: #666;
    float: left;
    font-weight: 600;
    font-size: 16px;
    line-height: 23px;
    margin: 0 0 20px 0;
    width: 100%;
}

#contenedorForm {
    display: block;
    width: 100%;
    float: left;
}

input[type=text] {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border: 1px solid #999;
    background: white;
    outline: none;
    width: 100%;
    margin-bottom: 10px;
}

.submit {
    width: 100%;
    max-width: none;

}
