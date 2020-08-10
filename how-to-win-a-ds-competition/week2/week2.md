# Week 2
## Exploratory Data Analysis
### Exploratory Data Analysis

![](image_1.jpg)

![](image_2.jpg)

![](image_3.jpg)

![](image_4.jpg)

![](image_5.jpg)

![](image_6.jpg)

![](image_7.jpg)

![](image_8.jpg)

![](image_9.jpg)

![](image_10.jpg)

![](image_11.jpg)

![](image_12.jpg)

![](image_13.jpg)

![](image_14.jpg)

![](image_15.jpg)

![](image_16.jpg)

![](image_17.jpg)

![](image_18.jpg)

![](image_19.jpg)

### Building intuition about the data


![](image_20.jpg)

![](image_21.jpg)

![](image_22.jpg)

![](image_23.jpg)

![](image_24.jpg)

![](image_25.jpg)

![](image_26.jpg)

![](image_27.jpg)

![](image_28.jpg)

![](image_29.jpg)

![](image_30.jpg)

![](image_31.jpg)

![](image_32.jpg)

![](image_33.jpg)

![](image_34.jpg)

![](image_35.jpg)

![](image_36.jpg)

![](image_37.jpg)

#### Reading material
[Notebook](https://github.com/jandvanegas/notes-advanced-machine-learning-specialization/blob/master/how-to-win-a-ds-competition/week2/EDA_video2.slides.html)

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="chrome=1" />

<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />


<title>EDA_video2 slides</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<!-- General and theme style sheets -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/css/reveal.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/css/theme/simple.css" id="theme">

<!-- If the query includes 'print-pdf', include the PDF print sheet -->
<script>
if( window.location.search.match( /print-pdf/gi ) ) {
        var link = document.createElement( 'link' );
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = 'https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/css/print/pdf.css';
        document.getElementsByTagName( 'head' )[0].appendChild( link );
}

</script>

<!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/lib/js/html5shiv.js"></script>
<![endif]-->

<!-- Loading the mathjax macro -->
<!-- Load mathjax -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/latest.js?config=TeX-AMS_HTML"></script>
    <!-- MathJax configuration -->
    <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            inlineMath: [ ['$','$'], ["\\(","\\)"] ],
            displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
            processEscapes: true,
            processEnvironments: true
        },
        // Center justify equations in code and markdown cells. Elsewhere
        // we use CSS to left justify single line equations in code cells.
        displayAlign: 'center',
        "HTML-CSS": {
            styles: {'.MathJax_Display': {"margin": 0}},
            linebreaks: { automatic: true }
        }
    });
    </script>
    <!-- End of mathjax configuration -->

<!-- Get Font-awesome from cdn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<style type="text/css">
    /*!
*
* Twitter Bootstrap
*
*/
/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  font-size: 2em;
  margin: 0.67em 0;
}
mark {
  background: #ff0;
  color: #000;
}
small {
  font-size: 80%;
}
sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  box-sizing: content-box;
  height: 0;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: textfield;
  box-sizing: content-box;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}
legend {
  border: 0;
  padding: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    background: transparent !important;
    box-shadow: none !important;
    text-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot');
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff') format('woff'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.glyphicon-asterisk:before {
  content: "\002a";
}
.glyphicon-plus:before {
  content: "\002b";
}
.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}
.glyphicon-minus:before {
  content: "\2212";
}
.glyphicon-cloud:before {
  content: "\2601";
}
.glyphicon-envelope:before {
  content: "\2709";
}
.glyphicon-pencil:before {
  content: "\270f";
}
.glyphicon-glass:before {
  content: "\e001";
}
.glyphicon-music:before {
  content: "\e002";
}
.glyphicon-search:before {
  content: "\e003";
}
.glyphicon-heart:before {
  content: "\e005";
}
.glyphicon-star:before {
  content: "\e006";
}
.glyphicon-star-empty:before {
  content: "\e007";
}
.glyphicon-user:before {
  content: "\e008";
}
.glyphicon-film:before {
  content: "\e009";
}
.glyphicon-th-large:before {
  content: "\e010";
}
.glyphicon-th:before {
  content: "\e011";
}
.glyphicon-th-list:before {
  content: "\e012";
}
.glyphicon-ok:before {
  content: "\e013";
}
.glyphicon-remove:before {
  content: "\e014";
}
.glyphicon-zoom-in:before {
  content: "\e015";
}
.glyphicon-zoom-out:before {
  content: "\e016";
}
.glyphicon-off:before {
  content: "\e017";
}
.glyphicon-signal:before {
  content: "\e018";
}
.glyphicon-cog:before {
  content: "\e019";
}
.glyphicon-trash:before {
  content: "\e020";
}
.glyphicon-home:before {
  content: "\e021";
}
.glyphicon-file:before {
  content: "\e022";
}
.glyphicon-time:before {
  content: "\e023";
}
.glyphicon-road:before {
  content: "\e024";
}
.glyphicon-download-alt:before {
  content: "\e025";
}
.glyphicon-download:before {
  content: "\e026";
}
.glyphicon-upload:before {
  content: "\e027";
}
.glyphicon-inbox:before {
  content: "\e028";
}
.glyphicon-play-circle:before {
  content: "\e029";
}
.glyphicon-repeat:before {
  content: "\e030";
}
.glyphicon-refresh:before {
  content: "\e031";
}
.glyphicon-list-alt:before {
  content: "\e032";
}
.glyphicon-lock:before {
  content: "\e033";
}
.glyphicon-flag:before {
  content: "\e034";
}
.glyphicon-headphones:before {
  content: "\e035";
}
.glyphicon-volume-off:before {
  content: "\e036";
}
.glyphicon-volume-down:before {
  content: "\e037";
}
.glyphicon-volume-up:before {
  content: "\e038";
}
.glyphicon-qrcode:before {
  content: "\e039";
}
.glyphicon-barcode:before {
  content: "\e040";
}
.glyphicon-tag:before {
  content: "\e041";
}
.glyphicon-tags:before {
  content: "\e042";
}
.glyphicon-book:before {
  content: "\e043";
}
.glyphicon-bookmark:before {
  content: "\e044";
}
.glyphicon-print:before {
  content: "\e045";
}
.glyphicon-camera:before {
  content: "\e046";
}
.glyphicon-font:before {
  content: "\e047";
}
.glyphicon-bold:before {
  content: "\e048";
}
.glyphicon-italic:before {
  content: "\e049";
}
.glyphicon-text-height:before {
  content: "\e050";
}
.glyphicon-text-width:before {
  content: "\e051";
}
.glyphicon-align-left:before {
  content: "\e052";
}
.glyphicon-align-center:before {
  content: "\e053";
}
.glyphicon-align-right:before {
  content: "\e054";
}
.glyphicon-align-justify:before {
  content: "\e055";
}
.glyphicon-list:before {
  content: "\e056";
}
.glyphicon-indent-left:before {
  content: "\e057";
}
.glyphicon-indent-right:before {
  content: "\e058";
}
.glyphicon-facetime-video:before {
  content: "\e059";
}
.glyphicon-picture:before {
  content: "\e060";
}
.glyphicon-map-marker:before {
  content: "\e062";
}
.glyphicon-adjust:before {
  content: "\e063";
}
.glyphicon-tint:before {
  content: "\e064";
}
.glyphicon-edit:before {
  content: "\e065";
}
.glyphicon-share:before {
  content: "\e066";
}
.glyphicon-check:before {
  content: "\e067";
}
.glyphicon-move:before {
  content: "\e068";
}
.glyphicon-step-backward:before {
  content: "\e069";
}
.glyphicon-fast-backward:before {
  content: "\e070";
}
.glyphicon-backward:before {
  content: "\e071";
}
.glyphicon-play:before {
  content: "\e072";
}
.glyphicon-pause:before {
  content: "\e073";
}
.glyphicon-stop:before {
  content: "\e074";
}
.glyphicon-forward:before {
  content: "\e075";
}
.glyphicon-fast-forward:before {
  content: "\e076";
}
.glyphicon-step-forward:before {
  content: "\e077";
}
.glyphicon-eject:before {
  content: "\e078";
}
.glyphicon-chevron-left:before {
  content: "\e079";
}
.glyphicon-chevron-right:before {
  content: "\e080";
}
.glyphicon-plus-sign:before {
  content: "\e081";
}
.glyphicon-minus-sign:before {
  content: "\e082";
}
.glyphicon-remove-sign:before {
  content: "\e083";
}
.glyphicon-ok-sign:before {
  content: "\e084";
}
.glyphicon-question-sign:before {
  content: "\e085";
}
.glyphicon-info-sign:before {
  content: "\e086";
}
.glyphicon-screenshot:before {
  content: "\e087";
}
.glyphicon-remove-circle:before {
  content: "\e088";
}
.glyphicon-ok-circle:before {
  content: "\e089";
}
.glyphicon-ban-circle:before {
  content: "\e090";
}
.glyphicon-arrow-left:before {
  content: "\e091";
}
.glyphicon-arrow-right:before {
  content: "\e092";
}
.glyphicon-arrow-up:before {
  content: "\e093";
}
.glyphicon-arrow-down:before {
  content: "\e094";
}
.glyphicon-share-alt:before {
  content: "\e095";
}
.glyphicon-resize-full:before {
  content: "\e096";
}
.glyphicon-resize-small:before {
  content: "\e097";
}
.glyphicon-exclamation-sign:before {
  content: "\e101";
}
.glyphicon-gift:before {
  content: "\e102";
}
.glyphicon-leaf:before {
  content: "\e103";
}
.glyphicon-fire:before {
  content: "\e104";
}
.glyphicon-eye-open:before {
  content: "\e105";
}
.glyphicon-eye-close:before {
  content: "\e106";
}
.glyphicon-warning-sign:before {
  content: "\e107";
}
.glyphicon-plane:before {
  content: "\e108";
}
.glyphicon-calendar:before {
  content: "\e109";
}
.glyphicon-random:before {
  content: "\e110";
}
.glyphicon-comment:before {
  content: "\e111";
}
.glyphicon-magnet:before {
  content: "\e112";
}
.glyphicon-chevron-up:before {
  content: "\e113";
}
.glyphicon-chevron-down:before {
  content: "\e114";
}
.glyphicon-retweet:before {
  content: "\e115";
}
.glyphicon-shopping-cart:before {
  content: "\e116";
}
.glyphicon-folder-close:before {
  content: "\e117";
}
.glyphicon-folder-open:before {
  content: "\e118";
}
.glyphicon-resize-vertical:before {
  content: "\e119";
}
.glyphicon-resize-horizontal:before {
  content: "\e120";
}
.glyphicon-hdd:before {
  content: "\e121";
}
.glyphicon-bullhorn:before {
  content: "\e122";
}
.glyphicon-bell:before {
  content: "\e123";
}
.glyphicon-certificate:before {
  content: "\e124";
}
.glyphicon-thumbs-up:before {
  content: "\e125";
}
.glyphicon-thumbs-down:before {
  content: "\e126";
}
.glyphicon-hand-right:before {
  content: "\e127";
}
.glyphicon-hand-left:before {
  content: "\e128";
}
.glyphicon-hand-up:before {
  content: "\e129";
}
.glyphicon-hand-down:before {
  content: "\e130";
}
.glyphicon-circle-arrow-right:before {
  content: "\e131";
}
.glyphicon-circle-arrow-left:before {
  content: "\e132";
}
.glyphicon-circle-arrow-up:before {
  content: "\e133";
}
.glyphicon-circle-arrow-down:before {
  content: "\e134";
}
.glyphicon-globe:before {
  content: "\e135";
}
.glyphicon-wrench:before {
  content: "\e136";
}
.glyphicon-tasks:before {
  content: "\e137";
}
.glyphicon-filter:before {
  content: "\e138";
}
.glyphicon-briefcase:before {
  content: "\e139";
}
.glyphicon-fullscreen:before {
  content: "\e140";
}
.glyphicon-dashboard:before {
  content: "\e141";
}
.glyphicon-paperclip:before {
  content: "\e142";
}
.glyphicon-heart-empty:before {
  content: "\e143";
}
.glyphicon-link:before {
  content: "\e144";
}
.glyphicon-phone:before {
  content: "\e145";
}
.glyphicon-pushpin:before {
  content: "\e146";
}
.glyphicon-usd:before {
  content: "\e148";
}
.glyphicon-gbp:before {
  content: "\e149";
}
.glyphicon-sort:before {
  content: "\e150";
}
.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}
.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}
.glyphicon-sort-by-order:before {
  content: "\e153";
}
.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}
.glyphicon-sort-by-attributes:before {
  content: "\e155";
}
.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}
.glyphicon-unchecked:before {
  content: "\e157";
}
.glyphicon-expand:before {
  content: "\e158";
}
.glyphicon-collapse-down:before {
  content: "\e159";
}
.glyphicon-collapse-up:before {
  content: "\e160";
}
.glyphicon-log-in:before {
  content: "\e161";
}
.glyphicon-flash:before {
  content: "\e162";
}
.glyphicon-log-out:before {
  content: "\e163";
}
.glyphicon-new-window:before {
  content: "\e164";
}
.glyphicon-record:before {
  content: "\e165";
}
.glyphicon-save:before {
  content: "\e166";
}
.glyphicon-open:before {
  content: "\e167";
}
.glyphicon-saved:before {
  content: "\e168";
}
.glyphicon-import:before {
  content: "\e169";
}
.glyphicon-export:before {
  content: "\e170";
}
.glyphicon-send:before {
  content: "\e171";
}
.glyphicon-floppy-disk:before {
  content: "\e172";
}
.glyphicon-floppy-saved:before {
  content: "\e173";
}
.glyphicon-floppy-remove:before {
  content: "\e174";
}
.glyphicon-floppy-save:before {
  content: "\e175";
}
.glyphicon-floppy-open:before {
  content: "\e176";
}
.glyphicon-credit-card:before {
  content: "\e177";
}
.glyphicon-transfer:before {
  content: "\e178";
}
.glyphicon-cutlery:before {
  content: "\e179";
}
.glyphicon-header:before {
  content: "\e180";
}
.glyphicon-compressed:before {
  content: "\e181";
}
.glyphicon-earphone:before {
  content: "\e182";
}
.glyphicon-phone-alt:before {
  content: "\e183";
}
.glyphicon-tower:before {
  content: "\e184";
}
.glyphicon-stats:before {
  content: "\e185";
}
.glyphicon-sd-video:before {
  content: "\e186";
}
.glyphicon-hd-video:before {
  content: "\e187";
}
.glyphicon-subtitles:before {
  content: "\e188";
}
.glyphicon-sound-stereo:before {
  content: "\e189";
}
.glyphicon-sound-dolby:before {
  content: "\e190";
}
.glyphicon-sound-5-1:before {
  content: "\e191";
}
.glyphicon-sound-6-1:before {
  content: "\e192";
}
.glyphicon-sound-7-1:before {
  content: "\e193";
}
.glyphicon-copyright-mark:before {
  content: "\e194";
}
.glyphicon-registration-mark:before {
  content: "\e195";
}
.glyphicon-cloud-download:before {
  content: "\e197";
}
.glyphicon-cloud-upload:before {
  content: "\e198";
}
.glyphicon-tree-conifer:before {
  content: "\e199";
}
.glyphicon-tree-deciduous:before {
  content: "\e200";
}
.glyphicon-cd:before {
  content: "\e201";
}
.glyphicon-save-file:before {
  content: "\e202";
}
.glyphicon-open-file:before {
  content: "\e203";
}
.glyphicon-level-up:before {
  content: "\e204";
}
.glyphicon-copy:before {
  content: "\e205";
}
.glyphicon-paste:before {
  content: "\e206";
}
.glyphicon-alert:before {
  content: "\e209";
}
.glyphicon-equalizer:before {
  content: "\e210";
}
.glyphicon-king:before {
  content: "\e211";
}
.glyphicon-queen:before {
  content: "\e212";
}
.glyphicon-pawn:before {
  content: "\e213";
}
.glyphicon-bishop:before {
  content: "\e214";
}
.glyphicon-knight:before {
  content: "\e215";
}
.glyphicon-baby-formula:before {
  content: "\e216";
}
.glyphicon-tent:before {
  content: "\26fa";
}
.glyphicon-blackboard:before {
  content: "\e218";
}
.glyphicon-bed:before {
  content: "\e219";
}
.glyphicon-apple:before {
  content: "\f8ff";
}
.glyphicon-erase:before {
  content: "\e221";
}
.glyphicon-hourglass:before {
  content: "\231b";
}
.glyphicon-lamp:before {
  content: "\e223";
}
.glyphicon-duplicate:before {
  content: "\e224";
}
.glyphicon-piggy-bank:before {
  content: "\e225";
}
.glyphicon-scissors:before {
  content: "\e226";
}
.glyphicon-bitcoin:before {
  content: "\e227";
}
.glyphicon-btc:before {
  content: "\e227";
}
.glyphicon-xbt:before {
  content: "\e227";
}
.glyphicon-yen:before {
  content: "\00a5";
}
.glyphicon-jpy:before {
  content: "\00a5";
}
.glyphicon-ruble:before {
  content: "\20bd";
}
.glyphicon-rub:before {
  content: "\20bd";
}
.glyphicon-scale:before {
  content: "\e230";
}
.glyphicon-ice-lolly:before {
  content: "\e231";
}
.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}
.glyphicon-education:before {
  content: "\e233";
}
.glyphicon-option-horizontal:before {
  content: "\e234";
}
.glyphicon-option-vertical:before {
  content: "\e235";
}
.glyphicon-menu-hamburger:before {
  content: "\e236";
}
.glyphicon-modal-window:before {
  content: "\e237";
}
.glyphicon-oil:before {
  content: "\e238";
}
.glyphicon-grain:before {
  content: "\e239";
}
.glyphicon-sunglasses:before {
  content: "\e240";
}
.glyphicon-text-size:before {
  content: "\e241";
}
.glyphicon-text-color:before {
  content: "\e242";
}
.glyphicon-text-background:before {
  content: "\e243";
}
.glyphicon-object-align-top:before {
  content: "\e244";
}
.glyphicon-object-align-bottom:before {
  content: "\e245";
}
.glyphicon-object-align-horizontal:before {
  content: "\e246";
}
.glyphicon-object-align-left:before {
  content: "\e247";
}
.glyphicon-object-align-vertical:before {
  content: "\e248";
}
.glyphicon-object-align-right:before {
  content: "\e249";
}
.glyphicon-triangle-right:before {
  content: "\e250";
}
.glyphicon-triangle-left:before {
  content: "\e251";
}
.glyphicon-triangle-bottom:before {
  content: "\e252";
}
.glyphicon-triangle-top:before {
  content: "\e253";
}
.glyphicon-console:before {
  content: "\e254";
}
.glyphicon-superscript:before {
  content: "\e255";
}
.glyphicon-subscript:before {
  content: "\e256";
}
.glyphicon-menu-left:before {
  content: "\e257";
}
.glyphicon-menu-right:before {
  content: "\e258";
}
.glyphicon-menu-down:before {
  content: "\e259";
}
.glyphicon-menu-up:before {
  content: "\e260";
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html {
  font-size: 10px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  line-height: 1.42857143;
  color: #000;
  background-color: #fff;
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  color: #337ab7;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
}
.img-rounded {
  border-radius: 3px;
}
.img-thumbnail {
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  display: inline-block;
  max-width: 100%;
  height: auto;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 18px;
  margin-bottom: 18px;
  border: 0;
  border-top: 1px solid #eeeeee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  margin: -1px;
  padding: 0;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 18px;
  margin-bottom: 9px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 9px;
  margin-bottom: 9px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 33px;
}
h2,
.h2 {
  font-size: 27px;
}
h3,
.h3 {
  font-size: 23px;
}
h4,
.h4 {
  font-size: 17px;
}
h5,
.h5 {
  font-size: 13px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin: 0 0 9px;
}
.lead {
  margin-bottom: 18px;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 19.5px;
  }
}
small,
.small {
  font-size: 92%;
}
mark,
.mark {
  background-color: #fcf8e3;
  padding: .2em;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 8px;
  margin: 36px 0 18px;
  border-bottom: 1px solid #eeeeee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 9px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  list-style: none;
  margin-left: -5px;
}
.list-inline > li {
  display: inline-block;
  padding-left: 5px;
  padding-right: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 18px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 541px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    clear: left;
    text-align: right;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 9px 18px;
  margin: 0 0 18px;
  font-size: inherit;
  border-left: 5px solid #eeeeee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
  text-align: right;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 18px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 2px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #888;
  background-color: transparent;
  border-radius: 1px;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  box-shadow: none;
}
pre {
  display: block;
  padding: 8.5px;
  margin: 0 0 9px;
  font-size: 12px;
  line-height: 1.42857143;
  word-break: break-all;
  word-wrap: break-word;
  color: #333333;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 2px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
@media (min-width: 768px) {
  .container {
    width: 768px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 940px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1140px;
  }
}
.container-fluid {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
.row {
  margin-left: 0px;
  margin-right: 0px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-left: 0px;
  padding-right: 0px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0%;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%;
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 75%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0%;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 18px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  float: none;
  display: table-column;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  float: none;
  display: table-cell;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  overflow-x: auto;
  min-height: 0.01%;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 13.5px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  padding: 0;
  margin: 0;
  border: 0;
  min-width: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 18px;
  font-size: 19.5px;
  line-height: inherit;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
}
.form-control {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  border: 0;
  background-color: transparent;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eeeeee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 32px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 45px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 18px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-left: -20px;
  margin-top: 4px \9;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  vertical-align: middle;
  font-weight: normal;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
  min-height: 31px;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-left: 0;
  padding-right: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 30px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-lg {
  height: 45px;
  line-height: 45px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.form-group-lg select.form-control {
  height: 45px;
  line-height: 45px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 45px;
  min-height: 35px;
  padding: 11px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 40px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 32px;
  height: 32px;
  line-height: 32px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 45px;
  height: 45px;
  line-height: 45px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  border-color: #3c763d;
  background-color: #dff0d8;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  border-color: #8a6d3b;
  background-color: #fcf8e3;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  border-color: #a94442;
  background-color: #f2dede;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 23px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #404040;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  margin-top: 0;
  margin-bottom: 0;
  padding-top: 7px;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 25px;
}
.form-horizontal .form-group {
  margin-left: 0px;
  margin-right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    text-align: right;
    margin-bottom: 0;
    padding-top: 7px;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 17px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: normal;
  text-align: center;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  white-space: nowrap;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  border-radius: 2px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  outline: 0;
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  box-shadow: none;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  color: #337ab7;
  font-weight: normal;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-property: height, visibility;
  transition-property: height, visibility;
  -webkit-transition-duration: 0.35s;
  transition-duration: 0.35s;
  -webkit-transition-timing-function: ease;
  transition-timing-function: ease;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  font-size: 13px;
  text-align: left;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 2px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  text-decoration: none;
  color: #262626;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  outline: 0;
  background-color: #337ab7;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: not-allowed;
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  left: auto;
  right: 0;
}
.dropdown-menu-left {
  left: 0;
  right: auto;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
  content: "";
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 541px) {
  .navbar-right .dropdown-menu {
    left: auto;
    right: 0;
  }
  .navbar-right .dropdown-menu-left {
    left: 0;
    right: auto;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  float: none;
  display: table-cell;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-left: 0;
  padding-right: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  line-height: 45px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  color: #555555;
  text-align: center;
  background-color: #eeeeee;
  border: 1px solid #ccc;
  border-radius: 2px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 1px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 17px;
  border-radius: 3px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.nav > li.disabled > a {
  color: #777777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777777;
  text-decoration: none;
  background-color: transparent;
  cursor: not-allowed;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eeeeee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 2px 2px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eeeeee #eeeeee #ddd;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555555;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 2px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar {
  position: relative;
  min-height: 30px;
  margin-bottom: 18px;
  border: 1px solid transparent;
}
@media (min-width: 541px) {
  .navbar {
    border-radius: 2px;
  }
}
@media (min-width: 541px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  overflow-x: visible;
  padding-right: 0px;
  padding-left: 0px;
  border-top: 1px solid transparent;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
  -webkit-overflow-scrolling: touch;
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 541px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-left: 0;
    padding-right: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 540px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: 0px;
  margin-left: 0px;
}
@media (min-width: 541px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 541px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 541px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  padding: 6px 0px;
  font-size: 17px;
  line-height: 18px;
  height: 30px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 541px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: 0px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  margin-right: 0px;
  padding: 9px 10px;
  margin-top: -2px;
  margin-bottom: -2px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 2px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 541px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 3px 0px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 18px;
}
@media (max-width: 540px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 18px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 541px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 6px;
    padding-bottom: 6px;
  }
}
.navbar-form {
  margin-left: 0px;
  margin-right: 0px;
  padding: 10px 0px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: -1px;
  margin-bottom: -1px;
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 540px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 541px) {
  .navbar-form {
    width: auto;
    border: 0;
    margin-left: 0;
    margin-right: 0;
    padding-top: 0;
    padding-bottom: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: -1px;
  margin-bottom: -1px;
}
.navbar-btn.btn-sm {
  margin-top: 0px;
  margin-bottom: 0px;
}
.navbar-btn.btn-xs {
  margin-top: 4px;
  margin-bottom: 4px;
}
.navbar-text {
  margin-top: 6px;
  margin-bottom: 6px;
}
@media (min-width: 541px) {
  .navbar-text {
    float: left;
    margin-left: 0px;
    margin-right: 0px;
  }
}
@media (min-width: 541px) {
  .navbar-left {
    float: left !important;
    float: left;
  }
  .navbar-right {
    float: right !important;
    float: right;
    margin-right: 0px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  background-color: #e7e7e7;
  color: #555;
}
@media (max-width: 540px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  background-color: #080808;
  color: #fff;
}
@media (max-width: 540px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 18px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 2px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  content: "/\00a0";
  padding: 0 5px;
  color: #5e5e5e;
}
.breadcrumb > .active {
  color: #777777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 18px 0;
  border-radius: 2px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  line-height: 1.42857143;
  text-decoration: none;
  color: #337ab7;
  background-color: #fff;
  border: 1px solid #ddd;
  margin-left: -1px;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-bottom-right-radius: 2px;
  border-top-right-radius: 2px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eeeeee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
  cursor: default;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777777;
  background-color: #fff;
  border-color: #ddd;
  cursor: not-allowed;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-bottom-left-radius: 1px;
  border-top-left-radius: 1px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-bottom-right-radius: 1px;
  border-top-right-radius: 1px;
}
.pager {
  padding-left: 0;
  margin: 18px 0;
  list-style: none;
  text-align: center;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777777;
  background-color: #fff;
  cursor: not-allowed;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  color: #fff;
  line-height: 1;
  vertical-align: middle;
  white-space: nowrap;
  text-align: center;
  background-color: #777777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eeeeee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 20px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  border-radius: 3px;
  padding-left: 0px;
  padding-right: 0px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-left: 60px;
    padding-right: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 59px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 18px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: border 0.2s ease-in-out;
  -o-transition: border 0.2s ease-in-out;
  transition: border 0.2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-left: auto;
  margin-right: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #000;
}
.alert {
  padding: 15px;
  margin-bottom: 18px;
  border: 1px solid transparent;
  border-radius: 2px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #3c763d;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #31708f;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  background-color: #fcf8e3;
  border-color: #faebcc;
  color: #8a6d3b;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  background-color: #f2dede;
  border-color: #ebccd1;
  color: #a94442;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  overflow: hidden;
  height: 18px;
  margin-bottom: 18px;
  background-color: #f5f5f5;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}
.progress-bar {
  float: left;
  width: 0%;
  height: 100%;
  font-size: 12px;
  line-height: 18px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  zoom: 1;
  overflow: hidden;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  margin-bottom: 20px;
  padding-left: 0;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  text-decoration: none;
  color: #555;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  background-color: #eeeeee;
  color: #777777;
  cursor: not-allowed;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 18px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 2px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 15px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-left: 15px;
  padding-right: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 1px;
  border-top-right-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 1px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-left-radius: 1px;
  border-bottom-right-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 1px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  border: 0;
  margin-bottom: 0;
}
.panel-group {
  margin-bottom: 18px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 2px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  height: 100%;
  width: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
.well-lg {
  padding: 24px;
  border-radius: 3px;
}
.well-sm {
  padding: 9px;
  border-radius: 1px;
}
.close {
  float: right;
  font-size: 19.5px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
.modal-open {
  overflow: hidden;
}
.modal {
  display: none;
  overflow: hidden;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, -25%);
  -ms-transform: translate(0, -25%);
  -o-transform: translate(0, -25%);
  transform: translate(0, -25%);
  -webkit-transition: -webkit-transform 0.3s ease-out;
  -moz-transition: -moz-transform 0.3s ease-out;
  -o-transition: -o-transform 0.3s ease-out;
  transition: transform 0.3s ease-out;
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  background-clip: padding-box;
  outline: 0;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  opacity: 0;
  filter: alpha(opacity=0);
}
.modal-backdrop.in {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 12px;
  opacity: 0;
  filter: alpha(opacity=0);
}
.tooltip.in {
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
.tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
.tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
.tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 2px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  bottom: 0;
  right: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 13px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 13px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 2px 2px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  border-width: 10px;
  content: "";
}
.popover.top > .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
.popover.top > .arrow:after {
  content: " ";
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #fff;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
.popover.right > .arrow:after {
  content: " ";
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #fff;
}
.popover.bottom > .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
.popover.bottom > .arrow:after {
  content: " ";
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
.popover.left > .arrow:after {
  content: " ";
  right: 1px;
  border-right-width: 0;
  border-left-color: #fff;
  bottom: -10px;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}
.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    -moz-transition: -moz-transform 0.6s ease-in-out;
    -o-transition: -o-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 15%;
  opacity: 0.5;
  filter: alpha(opacity=50);
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
}
.carousel-control.right {
  left: auto;
  right: 0;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
}
.carousel-control:hover,
.carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  border: 1px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
}
.carousel-indicators .active {
  margin: 0;
  width: 12px;
  height: 12px;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after,
.item_buttons:before,
.item_buttons:after {
  content: " ";
  display: table;
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after,
.item_buttons:after {
  clear: both;
}
.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}
/*!
*
* Font Awesome
*
*/
/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */
/* FONT PATH
 * -------------------------- */
@font-face {
  font-family: 'FontAwesome';
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('../components/font-awesome/fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('../components/font-awesome/fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('../components/font-awesome/fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('../components/font-awesome/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
}
.fa {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
/* makes the font 33% larger relative to the icon container */
.fa-lg {
  font-size: 1.33333333em;
  line-height: 0.75em;
  vertical-align: -15%;
}
.fa-2x {
  font-size: 2em;
}
.fa-3x {
  font-size: 3em;
}
.fa-4x {
  font-size: 4em;
}
.fa-5x {
  font-size: 5em;
}
.fa-fw {
  width: 1.28571429em;
  text-align: center;
}
.fa-ul {
  padding-left: 0;
  margin-left: 2.14285714em;
  list-style-type: none;
}
.fa-ul > li {
  position: relative;
}
.fa-li {
  position: absolute;
  left: -2.14285714em;
  width: 2.14285714em;
  top: 0.14285714em;
  text-align: center;
}
.fa-li.fa-lg {
  left: -1.85714286em;
}
.fa-border {
  padding: .2em .25em .15em;
  border: solid 0.08em #eee;
  border-radius: .1em;
}
.fa-pull-left {
  float: left;
}
.fa-pull-right {
  float: right;
}
.fa.fa-pull-left {
  margin-right: .3em;
}
.fa.fa-pull-right {
  margin-left: .3em;
}
/* Deprecated as of 4.4.0 */
.pull-right {
  float: right;
}
.pull-left {
  float: left;
}
.fa.pull-left {
  margin-right: .3em;
}
.fa.pull-right {
  margin-left: .3em;
}
.fa-spin {
  -webkit-animation: fa-spin 2s infinite linear;
  animation: fa-spin 2s infinite linear;
}
.fa-pulse {
  -webkit-animation: fa-spin 1s infinite steps(8);
  animation: fa-spin 1s infinite steps(8);
}
@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
.fa-rotate-90 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.fa-rotate-180 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg);
}
.fa-rotate-270 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
  -webkit-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  transform: rotate(270deg);
}
.fa-flip-horizontal {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
  -webkit-transform: scale(-1, 1);
  -ms-transform: scale(-1, 1);
  transform: scale(-1, 1);
}
.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(1, -1);
  -ms-transform: scale(1, -1);
  transform: scale(1, -1);
}
:root .fa-rotate-90,
:root .fa-rotate-180,
:root .fa-rotate-270,
:root .fa-flip-horizontal,
:root .fa-flip-vertical {
  filter: none;
}
.fa-stack {
  position: relative;
  display: inline-block;
  width: 2em;
  height: 2em;
  line-height: 2em;
  vertical-align: middle;
}
.fa-stack-1x,
.fa-stack-2x {
  position: absolute;
  left: 0;
  width: 100%;
  text-align: center;
}
.fa-stack-1x {
  line-height: inherit;
}
.fa-stack-2x {
  font-size: 2em;
}
.fa-inverse {
  color: #fff;
}
/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
   readers do not read off random characters that represent icons */
.fa-glass:before {
  content: "\f000";
}
.fa-music:before {
  content: "\f001";
}
.fa-search:before {
  content: "\f002";
}
.fa-envelope-o:before {
  content: "\f003";
}
.fa-heart:before {
  content: "\f004";
}
.fa-star:before {
  content: "\f005";
}
.fa-star-o:before {
  content: "\f006";
}
.fa-user:before {
  content: "\f007";
}
.fa-film:before {
  content: "\f008";
}
.fa-th-large:before {
  content: "\f009";
}
.fa-th:before {
  content: "\f00a";
}
.fa-th-list:before {
  content: "\f00b";
}
.fa-check:before {
  content: "\f00c";
}
.fa-remove:before,
.fa-close:before,
.fa-times:before {
  content: "\f00d";
}
.fa-search-plus:before {
  content: "\f00e";
}
.fa-search-minus:before {
  content: "\f010";
}
.fa-power-off:before {
  content: "\f011";
}
.fa-signal:before {
  content: "\f012";
}
.fa-gear:before,
.fa-cog:before {
  content: "\f013";
}
.fa-trash-o:before {
  content: "\f014";
}
.fa-home:before {
  content: "\f015";
}
.fa-file-o:before {
  content: "\f016";
}
.fa-clock-o:before {
  content: "\f017";
}
.fa-road:before {
  content: "\f018";
}
.fa-download:before {
  content: "\f019";
}
.fa-arrow-circle-o-down:before {
  content: "\f01a";
}
.fa-arrow-circle-o-up:before {
  content: "\f01b";
}
.fa-inbox:before {
  content: "\f01c";
}
.fa-play-circle-o:before {
  content: "\f01d";
}
.fa-rotate-right:before,
.fa-repeat:before {
  content: "\f01e";
}
.fa-refresh:before {
  content: "\f021";
}
.fa-list-alt:before {
  content: "\f022";
}
.fa-lock:before {
  content: "\f023";
}
.fa-flag:before {
  content: "\f024";
}
.fa-headphones:before {
  content: "\f025";
}
.fa-volume-off:before {
  content: "\f026";
}
.fa-volume-down:before {
  content: "\f027";
}
.fa-volume-up:before {
  content: "\f028";
}
.fa-qrcode:before {
  content: "\f029";
}
.fa-barcode:before {
  content: "\f02a";
}
.fa-tag:before {
  content: "\f02b";
}
.fa-tags:before {
  content: "\f02c";
}
.fa-book:before {
  content: "\f02d";
}
.fa-bookmark:before {
  content: "\f02e";
}
.fa-print:before {
  content: "\f02f";
}
.fa-camera:before {
  content: "\f030";
}
.fa-font:before {
  content: "\f031";
}
.fa-bold:before {
  content: "\f032";
}
.fa-italic:before {
  content: "\f033";
}
.fa-text-height:before {
  content: "\f034";
}
.fa-text-width:before {
  content: "\f035";
}
.fa-align-left:before {
  content: "\f036";
}
.fa-align-center:before {
  content: "\f037";
}
.fa-align-right:before {
  content: "\f038";
}
.fa-align-justify:before {
  content: "\f039";
}
.fa-list:before {
  content: "\f03a";
}
.fa-dedent:before,
.fa-outdent:before {
  content: "\f03b";
}
.fa-indent:before {
  content: "\f03c";
}
.fa-video-camera:before {
  content: "\f03d";
}
.fa-photo:before,
.fa-image:before,
.fa-picture-o:before {
  content: "\f03e";
}
.fa-pencil:before {
  content: "\f040";
}
.fa-map-marker:before {
  content: "\f041";
}
.fa-adjust:before {
  content: "\f042";
}
.fa-tint:before {
  content: "\f043";
}
.fa-edit:before,
.fa-pencil-square-o:before {
  content: "\f044";
}
.fa-share-square-o:before {
  content: "\f045";
}
.fa-check-square-o:before {
  content: "\f046";
}
.fa-arrows:before {
  content: "\f047";
}
.fa-step-backward:before {
  content: "\f048";
}
.fa-fast-backward:before {
  content: "\f049";
}
.fa-backward:before {
  content: "\f04a";
}
.fa-play:before {
  content: "\f04b";
}
.fa-pause:before {
  content: "\f04c";
}
.fa-stop:before {
  content: "\f04d";
}
.fa-forward:before {
  content: "\f04e";
}
.fa-fast-forward:before {
  content: "\f050";
}
.fa-step-forward:before {
  content: "\f051";
}
.fa-eject:before {
  content: "\f052";
}
.fa-chevron-left:before {
  content: "\f053";
}
.fa-chevron-right:before {
  content: "\f054";
}
.fa-plus-circle:before {
  content: "\f055";
}
.fa-minus-circle:before {
  content: "\f056";
}
.fa-times-circle:before {
  content: "\f057";
}
.fa-check-circle:before {
  content: "\f058";
}
.fa-question-circle:before {
  content: "\f059";
}
.fa-info-circle:before {
  content: "\f05a";
}
.fa-crosshairs:before {
  content: "\f05b";
}
.fa-times-circle-o:before {
  content: "\f05c";
}
.fa-check-circle-o:before {
  content: "\f05d";
}
.fa-ban:before {
  content: "\f05e";
}
.fa-arrow-left:before {
  content: "\f060";
}
.fa-arrow-right:before {
  content: "\f061";
}
.fa-arrow-up:before {
  content: "\f062";
}
.fa-arrow-down:before {
  content: "\f063";
}
.fa-mail-forward:before,
.fa-share:before {
  content: "\f064";
}
.fa-expand:before {
  content: "\f065";
}
.fa-compress:before {
  content: "\f066";
}
.fa-plus:before {
  content: "\f067";
}
.fa-minus:before {
  content: "\f068";
}
.fa-asterisk:before {
  content: "\f069";
}
.fa-exclamation-circle:before {
  content: "\f06a";
}
.fa-gift:before {
  content: "\f06b";
}
.fa-leaf:before {
  content: "\f06c";
}
.fa-fire:before {
  content: "\f06d";
}
.fa-eye:before {
  content: "\f06e";
}
.fa-eye-slash:before {
  content: "\f070";
}
.fa-warning:before,
.fa-exclamation-triangle:before {
  content: "\f071";
}
.fa-plane:before {
  content: "\f072";
}
.fa-calendar:before {
  content: "\f073";
}
.fa-random:before {
  content: "\f074";
}
.fa-comment:before {
  content: "\f075";
}
.fa-magnet:before {
  content: "\f076";
}
.fa-chevron-up:before {
  content: "\f077";
}
.fa-chevron-down:before {
  content: "\f078";
}
.fa-retweet:before {
  content: "\f079";
}
.fa-shopping-cart:before {
  content: "\f07a";
}
.fa-folder:before {
  content: "\f07b";
}
.fa-folder-open:before {
  content: "\f07c";
}
.fa-arrows-v:before {
  content: "\f07d";
}
.fa-arrows-h:before {
  content: "\f07e";
}
.fa-bar-chart-o:before,
.fa-bar-chart:before {
  content: "\f080";
}
.fa-twitter-square:before {
  content: "\f081";
}
.fa-facebook-square:before {
  content: "\f082";
}
.fa-camera-retro:before {
  content: "\f083";
}
.fa-key:before {
  content: "\f084";
}
.fa-gears:before,
.fa-cogs:before {
  content: "\f085";
}
.fa-comments:before {
  content: "\f086";
}
.fa-thumbs-o-up:before {
  content: "\f087";
}
.fa-thumbs-o-down:before {
  content: "\f088";
}
.fa-star-half:before {
  content: "\f089";
}
.fa-heart-o:before {
  content: "\f08a";
}
.fa-sign-out:before {
  content: "\f08b";
}
.fa-linkedin-square:before {
  content: "\f08c";
}
.fa-thumb-tack:before {
  content: "\f08d";
}
.fa-external-link:before {
  content: "\f08e";
}
.fa-sign-in:before {
  content: "\f090";
}
.fa-trophy:before {
  content: "\f091";
}
.fa-github-square:before {
  content: "\f092";
}
.fa-upload:before {
  content: "\f093";
}
.fa-lemon-o:before {
  content: "\f094";
}
.fa-phone:before {
  content: "\f095";
}
.fa-square-o:before {
  content: "\f096";
}
.fa-bookmark-o:before {
  content: "\f097";
}
.fa-phone-square:before {
  content: "\f098";
}
.fa-twitter:before {
  content: "\f099";
}
.fa-facebook-f:before,
.fa-facebook:before {
  content: "\f09a";
}
.fa-github:before {
  content: "\f09b";
}
.fa-unlock:before {
  content: "\f09c";
}
.fa-credit-card:before {
  content: "\f09d";
}
.fa-feed:before,
.fa-rss:before {
  content: "\f09e";
}
.fa-hdd-o:before {
  content: "\f0a0";
}
.fa-bullhorn:before {
  content: "\f0a1";
}
.fa-bell:before {
  content: "\f0f3";
}
.fa-certificate:before {
  content: "\f0a3";
}
.fa-hand-o-right:before {
  content: "\f0a4";
}
.fa-hand-o-left:before {
  content: "\f0a5";
}
.fa-hand-o-up:before {
  content: "\f0a6";
}
.fa-hand-o-down:before {
  content: "\f0a7";
}
.fa-arrow-circle-left:before {
  content: "\f0a8";
}
.fa-arrow-circle-right:before {
  content: "\f0a9";
}
.fa-arrow-circle-up:before {
  content: "\f0aa";
}
.fa-arrow-circle-down:before {
  content: "\f0ab";
}
.fa-globe:before {
  content: "\f0ac";
}
.fa-wrench:before {
  content: "\f0ad";
}
.fa-tasks:before {
  content: "\f0ae";
}
.fa-filter:before {
  content: "\f0b0";
}
.fa-briefcase:before {
  content: "\f0b1";
}
.fa-arrows-alt:before {
  content: "\f0b2";
}
.fa-group:before,
.fa-users:before {
  content: "\f0c0";
}
.fa-chain:before,
.fa-link:before {
  content: "\f0c1";
}
.fa-cloud:before {
  content: "\f0c2";
}
.fa-flask:before {
  content: "\f0c3";
}
.fa-cut:before,
.fa-scissors:before {
  content: "\f0c4";
}
.fa-copy:before,
.fa-files-o:before {
  content: "\f0c5";
}
.fa-paperclip:before {
  content: "\f0c6";
}
.fa-save:before,
.fa-floppy-o:before {
  content: "\f0c7";
}
.fa-square:before {
  content: "\f0c8";
}
.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  content: "\f0c9";
}
.fa-list-ul:before {
  content: "\f0ca";
}
.fa-list-ol:before {
  content: "\f0cb";
}
.fa-strikethrough:before {
  content: "\f0cc";
}
.fa-underline:before {
  content: "\f0cd";
}
.fa-table:before {
  content: "\f0ce";
}
.fa-magic:before {
  content: "\f0d0";
}
.fa-truck:before {
  content: "\f0d1";
}
.fa-pinterest:before {
  content: "\f0d2";
}
.fa-pinterest-square:before {
  content: "\f0d3";
}
.fa-google-plus-square:before {
  content: "\f0d4";
}
.fa-google-plus:before {
  content: "\f0d5";
}
.fa-money:before {
  content: "\f0d6";
}
.fa-caret-down:before {
  content: "\f0d7";
}
.fa-caret-up:before {
  content: "\f0d8";
}
.fa-caret-left:before {
  content: "\f0d9";
}
.fa-caret-right:before {
  content: "\f0da";
}
.fa-columns:before {
  content: "\f0db";
}
.fa-unsorted:before,
.fa-sort:before {
  content: "\f0dc";
}
.fa-sort-down:before,
.fa-sort-desc:before {
  content: "\f0dd";
}
.fa-sort-up:before,
.fa-sort-asc:before {
  content: "\f0de";
}
.fa-envelope:before {
  content: "\f0e0";
}
.fa-linkedin:before {
  content: "\f0e1";
}
.fa-rotate-left:before,
.fa-undo:before {
  content: "\f0e2";
}
.fa-legal:before,
.fa-gavel:before {
  content: "\f0e3";
}
.fa-dashboard:before,
.fa-tachometer:before {
  content: "\f0e4";
}
.fa-comment-o:before {
  content: "\f0e5";
}
.fa-comments-o:before {
  content: "\f0e6";
}
.fa-flash:before,
.fa-bolt:before {
  content: "\f0e7";
}
.fa-sitemap:before {
  content: "\f0e8";
}
.fa-umbrella:before {
  content: "\f0e9";
}
.fa-paste:before,
.fa-clipboard:before {
  content: "\f0ea";
}
.fa-lightbulb-o:before {
  content: "\f0eb";
}
.fa-exchange:before {
  content: "\f0ec";
}
.fa-cloud-download:before {
  content: "\f0ed";
}
.fa-cloud-upload:before {
  content: "\f0ee";
}
.fa-user-md:before {
  content: "\f0f0";
}
.fa-stethoscope:before {
  content: "\f0f1";
}
.fa-suitcase:before {
  content: "\f0f2";
}
.fa-bell-o:before {
  content: "\f0a2";
}
.fa-coffee:before {
  content: "\f0f4";
}
.fa-cutlery:before {
  content: "\f0f5";
}
.fa-file-text-o:before {
  content: "\f0f6";
}
.fa-building-o:before {
  content: "\f0f7";
}
.fa-hospital-o:before {
  content: "\f0f8";
}
.fa-ambulance:before {
  content: "\f0f9";
}
.fa-medkit:before {
  content: "\f0fa";
}
.fa-fighter-jet:before {
  content: "\f0fb";
}
.fa-beer:before {
  content: "\f0fc";
}
.fa-h-square:before {
  content: "\f0fd";
}
.fa-plus-square:before {
  content: "\f0fe";
}
.fa-angle-double-left:before {
  content: "\f100";
}
.fa-angle-double-right:before {
  content: "\f101";
}
.fa-angle-double-up:before {
  content: "\f102";
}
.fa-angle-double-down:before {
  content: "\f103";
}
.fa-angle-left:before {
  content: "\f104";
}
.fa-angle-right:before {
  content: "\f105";
}
.fa-angle-up:before {
  content: "\f106";
}
.fa-angle-down:before {
  content: "\f107";
}
.fa-desktop:before {
  content: "\f108";
}
.fa-laptop:before {
  content: "\f109";
}
.fa-tablet:before {
  content: "\f10a";
}
.fa-mobile-phone:before,
.fa-mobile:before {
  content: "\f10b";
}
.fa-circle-o:before {
  content: "\f10c";
}
.fa-quote-left:before {
  content: "\f10d";
}
.fa-quote-right:before {
  content: "\f10e";
}
.fa-spinner:before {
  content: "\f110";
}
.fa-circle:before {
  content: "\f111";
}
.fa-mail-reply:before,
.fa-reply:before {
  content: "\f112";
}
.fa-github-alt:before {
  content: "\f113";
}
.fa-folder-o:before {
  content: "\f114";
}
.fa-folder-open-o:before {
  content: "\f115";
}
.fa-smile-o:before {
  content: "\f118";
}
.fa-frown-o:before {
  content: "\f119";
}
.fa-meh-o:before {
  content: "\f11a";
}
.fa-gamepad:before {
  content: "\f11b";
}
.fa-keyboard-o:before {
  content: "\f11c";
}
.fa-flag-o:before {
  content: "\f11d";
}
.fa-flag-checkered:before {
  content: "\f11e";
}
.fa-terminal:before {
  content: "\f120";
}
.fa-code:before {
  content: "\f121";
}
.fa-mail-reply-all:before,
.fa-reply-all:before {
  content: "\f122";
}
.fa-star-half-empty:before,
.fa-star-half-full:before,
.fa-star-half-o:before {
  content: "\f123";
}
.fa-location-arrow:before {
  content: "\f124";
}
.fa-crop:before {
  content: "\f125";
}
.fa-code-fork:before {
  content: "\f126";
}
.fa-unlink:before,
.fa-chain-broken:before {
  content: "\f127";
}
.fa-question:before {
  content: "\f128";
}
.fa-info:before {
  content: "\f129";
}
.fa-exclamation:before {
  content: "\f12a";
}
.fa-superscript:before {
  content: "\f12b";
}
.fa-subscript:before {
  content: "\f12c";
}
.fa-eraser:before {
  content: "\f12d";
}
.fa-puzzle-piece:before {
  content: "\f12e";
}
.fa-microphone:before {
  content: "\f130";
}
.fa-microphone-slash:before {
  content: "\f131";
}
.fa-shield:before {
  content: "\f132";
}
.fa-calendar-o:before {
  content: "\f133";
}
.fa-fire-extinguisher:before {
  content: "\f134";
}
.fa-rocket:before {
  content: "\f135";
}
.fa-maxcdn:before {
  content: "\f136";
}
.fa-chevron-circle-left:before {
  content: "\f137";
}
.fa-chevron-circle-right:before {
  content: "\f138";
}
.fa-chevron-circle-up:before {
  content: "\f139";
}
.fa-chevron-circle-down:before {
  content: "\f13a";
}
.fa-html5:before {
  content: "\f13b";
}
.fa-css3:before {
  content: "\f13c";
}
.fa-anchor:before {
  content: "\f13d";
}
.fa-unlock-alt:before {
  content: "\f13e";
}
.fa-bullseye:before {
  content: "\f140";
}
.fa-ellipsis-h:before {
  content: "\f141";
}
.fa-ellipsis-v:before {
  content: "\f142";
}
.fa-rss-square:before {
  content: "\f143";
}
.fa-play-circle:before {
  content: "\f144";
}
.fa-ticket:before {
  content: "\f145";
}
.fa-minus-square:before {
  content: "\f146";
}
.fa-minus-square-o:before {
  content: "\f147";
}
.fa-level-up:before {
  content: "\f148";
}
.fa-level-down:before {
  content: "\f149";
}
.fa-check-square:before {
  content: "\f14a";
}
.fa-pencil-square:before {
  content: "\f14b";
}
.fa-external-link-square:before {
  content: "\f14c";
}
.fa-share-square:before {
  content: "\f14d";
}
.fa-compass:before {
  content: "\f14e";
}
.fa-toggle-down:before,
.fa-caret-square-o-down:before {
  content: "\f150";
}
.fa-toggle-up:before,
.fa-caret-square-o-up:before {
  content: "\f151";
}
.fa-toggle-right:before,
.fa-caret-square-o-right:before {
  content: "\f152";
}
.fa-euro:before,
.fa-eur:before {
  content: "\f153";
}
.fa-gbp:before {
  content: "\f154";
}
.fa-dollar:before,
.fa-usd:before {
  content: "\f155";
}
.fa-rupee:before,
.fa-inr:before {
  content: "\f156";
}
.fa-cny:before,
.fa-rmb:before,
.fa-yen:before,
.fa-jpy:before {
  content: "\f157";
}
.fa-ruble:before,
.fa-rouble:before,
.fa-rub:before {
  content: "\f158";
}
.fa-won:before,
.fa-krw:before {
  content: "\f159";
}
.fa-bitcoin:before,
.fa-btc:before {
  content: "\f15a";
}
.fa-file:before {
  content: "\f15b";
}
.fa-file-text:before {
  content: "\f15c";
}
.fa-sort-alpha-asc:before {
  content: "\f15d";
}
.fa-sort-alpha-desc:before {
  content: "\f15e";
}
.fa-sort-amount-asc:before {
  content: "\f160";
}
.fa-sort-amount-desc:before {
  content: "\f161";
}
.fa-sort-numeric-asc:before {
  content: "\f162";
}
.fa-sort-numeric-desc:before {
  content: "\f163";
}
.fa-thumbs-up:before {
  content: "\f164";
}
.fa-thumbs-down:before {
  content: "\f165";
}
.fa-youtube-square:before {
  content: "\f166";
}
.fa-youtube:before {
  content: "\f167";
}
.fa-xing:before {
  content: "\f168";
}
.fa-xing-square:before {
  content: "\f169";
}
.fa-youtube-play:before {
  content: "\f16a";
}
.fa-dropbox:before {
  content: "\f16b";
}
.fa-stack-overflow:before {
  content: "\f16c";
}
.fa-instagram:before {
  content: "\f16d";
}
.fa-flickr:before {
  content: "\f16e";
}
.fa-adn:before {
  content: "\f170";
}
.fa-bitbucket:before {
  content: "\f171";
}
.fa-bitbucket-square:before {
  content: "\f172";
}
.fa-tumblr:before {
  content: "\f173";
}
.fa-tumblr-square:before {
  content: "\f174";
}
.fa-long-arrow-down:before {
  content: "\f175";
}
.fa-long-arrow-up:before {
  content: "\f176";
}
.fa-long-arrow-left:before {
  content: "\f177";
}
.fa-long-arrow-right:before {
  content: "\f178";
}
.fa-apple:before {
  content: "\f179";
}
.fa-windows:before {
  content: "\f17a";
}
.fa-android:before {
  content: "\f17b";
}
.fa-linux:before {
  content: "\f17c";
}
.fa-dribbble:before {
  content: "\f17d";
}
.fa-skype:before {
  content: "\f17e";
}
.fa-foursquare:before {
  content: "\f180";
}
.fa-trello:before {
  content: "\f181";
}
.fa-female:before {
  content: "\f182";
}
.fa-male:before {
  content: "\f183";
}
.fa-gittip:before,
.fa-gratipay:before {
  content: "\f184";
}
.fa-sun-o:before {
  content: "\f185";
}
.fa-moon-o:before {
  content: "\f186";
}
.fa-archive:before {
  content: "\f187";
}
.fa-bug:before {
  content: "\f188";
}
.fa-vk:before {
  content: "\f189";
}
.fa-weibo:before {
  content: "\f18a";
}
.fa-renren:before {
  content: "\f18b";
}
.fa-pagelines:before {
  content: "\f18c";
}
.fa-stack-exchange:before {
  content: "\f18d";
}
.fa-arrow-circle-o-right:before {
  content: "\f18e";
}
.fa-arrow-circle-o-left:before {
  content: "\f190";
}
.fa-toggle-left:before,
.fa-caret-square-o-left:before {
  content: "\f191";
}
.fa-dot-circle-o:before {
  content: "\f192";
}
.fa-wheelchair:before {
  content: "\f193";
}
.fa-vimeo-square:before {
  content: "\f194";
}
.fa-turkish-lira:before,
.fa-try:before {
  content: "\f195";
}
.fa-plus-square-o:before {
  content: "\f196";
}
.fa-space-shuttle:before {
  content: "\f197";
}
.fa-slack:before {
  content: "\f198";
}
.fa-envelope-square:before {
  content: "\f199";
}
.fa-wordpress:before {
  content: "\f19a";
}
.fa-openid:before {
  content: "\f19b";
}
.fa-institution:before,
.fa-bank:before,
.fa-university:before {
  content: "\f19c";
}
.fa-mortar-board:before,
.fa-graduation-cap:before {
  content: "\f19d";
}
.fa-yahoo:before {
  content: "\f19e";
}
.fa-google:before {
  content: "\f1a0";
}
.fa-reddit:before {
  content: "\f1a1";
}
.fa-reddit-square:before {
  content: "\f1a2";
}
.fa-stumbleupon-circle:before {
  content: "\f1a3";
}
.fa-stumbleupon:before {
  content: "\f1a4";
}
.fa-delicious:before {
  content: "\f1a5";
}
.fa-digg:before {
  content: "\f1a6";
}
.fa-pied-piper-pp:before {
  content: "\f1a7";
}
.fa-pied-piper-alt:before {
  content: "\f1a8";
}
.fa-drupal:before {
  content: "\f1a9";
}
.fa-joomla:before {
  content: "\f1aa";
}
.fa-language:before {
  content: "\f1ab";
}
.fa-fax:before {
  content: "\f1ac";
}
.fa-building:before {
  content: "\f1ad";
}
.fa-child:before {
  content: "\f1ae";
}
.fa-paw:before {
  content: "\f1b0";
}
.fa-spoon:before {
  content: "\f1b1";
}
.fa-cube:before {
  content: "\f1b2";
}
.fa-cubes:before {
  content: "\f1b3";
}
.fa-behance:before {
  content: "\f1b4";
}
.fa-behance-square:before {
  content: "\f1b5";
}
.fa-steam:before {
  content: "\f1b6";
}
.fa-steam-square:before {
  content: "\f1b7";
}
.fa-recycle:before {
  content: "\f1b8";
}
.fa-automobile:before,
.fa-car:before {
  content: "\f1b9";
}
.fa-cab:before,
.fa-taxi:before {
  content: "\f1ba";
}
.fa-tree:before {
  content: "\f1bb";
}
.fa-spotify:before {
  content: "\f1bc";
}
.fa-deviantart:before {
  content: "\f1bd";
}
.fa-soundcloud:before {
  content: "\f1be";
}
.fa-database:before {
  content: "\f1c0";
}
.fa-file-pdf-o:before {
  content: "\f1c1";
}
.fa-file-word-o:before {
  content: "\f1c2";
}
.fa-file-excel-o:before {
  content: "\f1c3";
}
.fa-file-powerpoint-o:before {
  content: "\f1c4";
}
.fa-file-photo-o:before,
.fa-file-picture-o:before,
.fa-file-image-o:before {
  content: "\f1c5";
}
.fa-file-zip-o:before,
.fa-file-archive-o:before {
  content: "\f1c6";
}
.fa-file-sound-o:before,
.fa-file-audio-o:before {
  content: "\f1c7";
}
.fa-file-movie-o:before,
.fa-file-video-o:before {
  content: "\f1c8";
}
.fa-file-code-o:before {
  content: "\f1c9";
}
.fa-vine:before {
  content: "\f1ca";
}
.fa-codepen:before {
  content: "\f1cb";
}
.fa-jsfiddle:before {
  content: "\f1cc";
}
.fa-life-bouy:before,
.fa-life-buoy:before,
.fa-life-saver:before,
.fa-support:before,
.fa-life-ring:before {
  content: "\f1cd";
}
.fa-circle-o-notch:before {
  content: "\f1ce";
}
.fa-ra:before,
.fa-resistance:before,
.fa-rebel:before {
  content: "\f1d0";
}
.fa-ge:before,
.fa-empire:before {
  content: "\f1d1";
}
.fa-git-square:before {
  content: "\f1d2";
}
.fa-git:before {
  content: "\f1d3";
}
.fa-y-combinator-square:before,
.fa-yc-square:before,
.fa-hacker-news:before {
  content: "\f1d4";
}
.fa-tencent-weibo:before {
  content: "\f1d5";
}
.fa-qq:before {
  content: "\f1d6";
}
.fa-wechat:before,
.fa-weixin:before {
  content: "\f1d7";
}
.fa-send:before,
.fa-paper-plane:before {
  content: "\f1d8";
}
.fa-send-o:before,
.fa-paper-plane-o:before {
  content: "\f1d9";
}
.fa-history:before {
  content: "\f1da";
}
.fa-circle-thin:before {
  content: "\f1db";
}
.fa-header:before {
  content: "\f1dc";
}
.fa-paragraph:before {
  content: "\f1dd";
}
.fa-sliders:before {
  content: "\f1de";
}
.fa-share-alt:before {
  content: "\f1e0";
}
.fa-share-alt-square:before {
  content: "\f1e1";
}
.fa-bomb:before {
  content: "\f1e2";
}
.fa-soccer-ball-o:before,
.fa-futbol-o:before {
  content: "\f1e3";
}
.fa-tty:before {
  content: "\f1e4";
}
.fa-binoculars:before {
  content: "\f1e5";
}
.fa-plug:before {
  content: "\f1e6";
}
.fa-slideshare:before {
  content: "\f1e7";
}
.fa-twitch:before {
  content: "\f1e8";
}
.fa-yelp:before {
  content: "\f1e9";
}
.fa-newspaper-o:before {
  content: "\f1ea";
}
.fa-wifi:before {
  content: "\f1eb";
}
.fa-calculator:before {
  content: "\f1ec";
}
.fa-paypal:before {
  content: "\f1ed";
}
.fa-google-wallet:before {
  content: "\f1ee";
}
.fa-cc-visa:before {
  content: "\f1f0";
}
.fa-cc-mastercard:before {
  content: "\f1f1";
}
.fa-cc-discover:before {
  content: "\f1f2";
}
.fa-cc-amex:before {
  content: "\f1f3";
}
.fa-cc-paypal:before {
  content: "\f1f4";
}
.fa-cc-stripe:before {
  content: "\f1f5";
}
.fa-bell-slash:before {
  content: "\f1f6";
}
.fa-bell-slash-o:before {
  content: "\f1f7";
}
.fa-trash:before {
  content: "\f1f8";
}
.fa-copyright:before {
  content: "\f1f9";
}
.fa-at:before {
  content: "\f1fa";
}
.fa-eyedropper:before {
  content: "\f1fb";
}
.fa-paint-brush:before {
  content: "\f1fc";
}
.fa-birthday-cake:before {
  content: "\f1fd";
}
.fa-area-chart:before {
  content: "\f1fe";
}
.fa-pie-chart:before {
  content: "\f200";
}
.fa-line-chart:before {
  content: "\f201";
}
.fa-lastfm:before {
  content: "\f202";
}
.fa-lastfm-square:before {
  content: "\f203";
}
.fa-toggle-off:before {
  content: "\f204";
}
.fa-toggle-on:before {
  content: "\f205";
}
.fa-bicycle:before {
  content: "\f206";
}
.fa-bus:before {
  content: "\f207";
}
.fa-ioxhost:before {
  content: "\f208";
}
.fa-angellist:before {
  content: "\f209";
}
.fa-cc:before {
  content: "\f20a";
}
.fa-shekel:before,
.fa-sheqel:before,
.fa-ils:before {
  content: "\f20b";
}
.fa-meanpath:before {
  content: "\f20c";
}
.fa-buysellads:before {
  content: "\f20d";
}
.fa-connectdevelop:before {
  content: "\f20e";
}
.fa-dashcube:before {
  content: "\f210";
}
.fa-forumbee:before {
  content: "\f211";
}
.fa-leanpub:before {
  content: "\f212";
}
.fa-sellsy:before {
  content: "\f213";
}
.fa-shirtsinbulk:before {
  content: "\f214";
}
.fa-simplybuilt:before {
  content: "\f215";
}
.fa-skyatlas:before {
  content: "\f216";
}
.fa-cart-plus:before {
  content: "\f217";
}
.fa-cart-arrow-down:before {
  content: "\f218";
}
.fa-diamond:before {
  content: "\f219";
}
.fa-ship:before {
  content: "\f21a";
}
.fa-user-secret:before {
  content: "\f21b";
}
.fa-motorcycle:before {
  content: "\f21c";
}
.fa-street-view:before {
  content: "\f21d";
}
.fa-heartbeat:before {
  content: "\f21e";
}
.fa-venus:before {
  content: "\f221";
}
.fa-mars:before {
  content: "\f222";
}
.fa-mercury:before {
  content: "\f223";
}
.fa-intersex:before,
.fa-transgender:before {
  content: "\f224";
}
.fa-transgender-alt:before {
  content: "\f225";
}
.fa-venus-double:before {
  content: "\f226";
}
.fa-mars-double:before {
  content: "\f227";
}
.fa-venus-mars:before {
  content: "\f228";
}
.fa-mars-stroke:before {
  content: "\f229";
}
.fa-mars-stroke-v:before {
  content: "\f22a";
}
.fa-mars-stroke-h:before {
  content: "\f22b";
}
.fa-neuter:before {
  content: "\f22c";
}
.fa-genderless:before {
  content: "\f22d";
}
.fa-facebook-official:before {
  content: "\f230";
}
.fa-pinterest-p:before {
  content: "\f231";
}
.fa-whatsapp:before {
  content: "\f232";
}
.fa-server:before {
  content: "\f233";
}
.fa-user-plus:before {
  content: "\f234";
}
.fa-user-times:before {
  content: "\f235";
}
.fa-hotel:before,
.fa-bed:before {
  content: "\f236";
}
.fa-viacoin:before {
  content: "\f237";
}
.fa-train:before {
  content: "\f238";
}
.fa-subway:before {
  content: "\f239";
}
.fa-medium:before {
  content: "\f23a";
}
.fa-yc:before,
.fa-y-combinator:before {
  content: "\f23b";
}
.fa-optin-monster:before {
  content: "\f23c";
}
.fa-opencart:before {
  content: "\f23d";
}
.fa-expeditedssl:before {
  content: "\f23e";
}
.fa-battery-4:before,
.fa-battery:before,
.fa-battery-full:before {
  content: "\f240";
}
.fa-battery-3:before,
.fa-battery-three-quarters:before {
  content: "\f241";
}
.fa-battery-2:before,
.fa-battery-half:before {
  content: "\f242";
}
.fa-battery-1:before,
.fa-battery-quarter:before {
  content: "\f243";
}
.fa-battery-0:before,
.fa-battery-empty:before {
  content: "\f244";
}
.fa-mouse-pointer:before {
  content: "\f245";
}
.fa-i-cursor:before {
  content: "\f246";
}
.fa-object-group:before {
  content: "\f247";
}
.fa-object-ungroup:before {
  content: "\f248";
}
.fa-sticky-note:before {
  content: "\f249";
}
.fa-sticky-note-o:before {
  content: "\f24a";
}
.fa-cc-jcb:before {
  content: "\f24b";
}
.fa-cc-diners-club:before {
  content: "\f24c";
}
.fa-clone:before {
  content: "\f24d";
}
.fa-balance-scale:before {
  content: "\f24e";
}
.fa-hourglass-o:before {
  content: "\f250";
}
.fa-hourglass-1:before,
.fa-hourglass-start:before {
  content: "\f251";
}
.fa-hourglass-2:before,
.fa-hourglass-half:before {
  content: "\f252";
}
.fa-hourglass-3:before,
.fa-hourglass-end:before {
  content: "\f253";
}
.fa-hourglass:before {
  content: "\f254";
}
.fa-hand-grab-o:before,
.fa-hand-rock-o:before {
  content: "\f255";
}
.fa-hand-stop-o:before,
.fa-hand-paper-o:before {
  content: "\f256";
}
.fa-hand-scissors-o:before {
  content: "\f257";
}
.fa-hand-lizard-o:before {
  content: "\f258";
}
.fa-hand-spock-o:before {
  content: "\f259";
}
.fa-hand-pointer-o:before {
  content: "\f25a";
}
.fa-hand-peace-o:before {
  content: "\f25b";
}
.fa-trademark:before {
  content: "\f25c";
}
.fa-registered:before {
  content: "\f25d";
}
.fa-creative-commons:before {
  content: "\f25e";
}
.fa-gg:before {
  content: "\f260";
}
.fa-gg-circle:before {
  content: "\f261";
}
.fa-tripadvisor:before {
  content: "\f262";
}
.fa-odnoklassniki:before {
  content: "\f263";
}
.fa-odnoklassniki-square:before {
  content: "\f264";
}
.fa-get-pocket:before {
  content: "\f265";
}
.fa-wikipedia-w:before {
  content: "\f266";
}
.fa-safari:before {
  content: "\f267";
}
.fa-chrome:before {
  content: "\f268";
}
.fa-firefox:before {
  content: "\f269";
}
.fa-opera:before {
  content: "\f26a";
}
.fa-internet-explorer:before {
  content: "\f26b";
}
.fa-tv:before,
.fa-television:before {
  content: "\f26c";
}
.fa-contao:before {
  content: "\f26d";
}
.fa-500px:before {
  content: "\f26e";
}
.fa-amazon:before {
  content: "\f270";
}
.fa-calendar-plus-o:before {
  content: "\f271";
}
.fa-calendar-minus-o:before {
  content: "\f272";
}
.fa-calendar-times-o:before {
  content: "\f273";
}
.fa-calendar-check-o:before {
  content: "\f274";
}
.fa-industry:before {
  content: "\f275";
}
.fa-map-pin:before {
  content: "\f276";
}
.fa-map-signs:before {
  content: "\f277";
}
.fa-map-o:before {
  content: "\f278";
}
.fa-map:before {
  content: "\f279";
}
.fa-commenting:before {
  content: "\f27a";
}
.fa-commenting-o:before {
  content: "\f27b";
}
.fa-houzz:before {
  content: "\f27c";
}
.fa-vimeo:before {
  content: "\f27d";
}
.fa-black-tie:before {
  content: "\f27e";
}
.fa-fonticons:before {
  content: "\f280";
}
.fa-reddit-alien:before {
  content: "\f281";
}
.fa-edge:before {
  content: "\f282";
}
.fa-credit-card-alt:before {
  content: "\f283";
}
.fa-codiepie:before {
  content: "\f284";
}
.fa-modx:before {
  content: "\f285";
}
.fa-fort-awesome:before {
  content: "\f286";
}
.fa-usb:before {
  content: "\f287";
}
.fa-product-hunt:before {
  content: "\f288";
}
.fa-mixcloud:before {
  content: "\f289";
}
.fa-scribd:before {
  content: "\f28a";
}
.fa-pause-circle:before {
  content: "\f28b";
}
.fa-pause-circle-o:before {
  content: "\f28c";
}
.fa-stop-circle:before {
  content: "\f28d";
}
.fa-stop-circle-o:before {
  content: "\f28e";
}
.fa-shopping-bag:before {
  content: "\f290";
}
.fa-shopping-basket:before {
  content: "\f291";
}
.fa-hashtag:before {
  content: "\f292";
}
.fa-bluetooth:before {
  content: "\f293";
}
.fa-bluetooth-b:before {
  content: "\f294";
}
.fa-percent:before {
  content: "\f295";
}
.fa-gitlab:before {
  content: "\f296";
}
.fa-wpbeginner:before {
  content: "\f297";
}
.fa-wpforms:before {
  content: "\f298";
}
.fa-envira:before {
  content: "\f299";
}
.fa-universal-access:before {
  content: "\f29a";
}
.fa-wheelchair-alt:before {
  content: "\f29b";
}
.fa-question-circle-o:before {
  content: "\f29c";
}
.fa-blind:before {
  content: "\f29d";
}
.fa-audio-description:before {
  content: "\f29e";
}
.fa-volume-control-phone:before {
  content: "\f2a0";
}
.fa-braille:before {
  content: "\f2a1";
}
.fa-assistive-listening-systems:before {
  content: "\f2a2";
}
.fa-asl-interpreting:before,
.fa-american-sign-language-interpreting:before {
  content: "\f2a3";
}
.fa-deafness:before,
.fa-hard-of-hearing:before,
.fa-deaf:before {
  content: "\f2a4";
}
.fa-glide:before {
  content: "\f2a5";
}
.fa-glide-g:before {
  content: "\f2a6";
}
.fa-signing:before,
.fa-sign-language:before {
  content: "\f2a7";
}
.fa-low-vision:before {
  content: "\f2a8";
}
.fa-viadeo:before {
  content: "\f2a9";
}
.fa-viadeo-square:before {
  content: "\f2aa";
}
.fa-snapchat:before {
  content: "\f2ab";
}
.fa-snapchat-ghost:before {
  content: "\f2ac";
}
.fa-snapchat-square:before {
  content: "\f2ad";
}
.fa-pied-piper:before {
  content: "\f2ae";
}
.fa-first-order:before {
  content: "\f2b0";
}
.fa-yoast:before {
  content: "\f2b1";
}
.fa-themeisle:before {
  content: "\f2b2";
}
.fa-google-plus-circle:before,
.fa-google-plus-official:before {
  content: "\f2b3";
}
.fa-fa:before,
.fa-font-awesome:before {
  content: "\f2b4";
}
.fa-handshake-o:before {
  content: "\f2b5";
}
.fa-envelope-open:before {
  content: "\f2b6";
}
.fa-envelope-open-o:before {
  content: "\f2b7";
}
.fa-linode:before {
  content: "\f2b8";
}
.fa-address-book:before {
  content: "\f2b9";
}
.fa-address-book-o:before {
  content: "\f2ba";
}
.fa-vcard:before,
.fa-address-card:before {
  content: "\f2bb";
}
.fa-vcard-o:before,
.fa-address-card-o:before {
  content: "\f2bc";
}
.fa-user-circle:before {
  content: "\f2bd";
}
.fa-user-circle-o:before {
  content: "\f2be";
}
.fa-user-o:before {
  content: "\f2c0";
}
.fa-id-badge:before {
  content: "\f2c1";
}
.fa-drivers-license:before,
.fa-id-card:before {
  content: "\f2c2";
}
.fa-drivers-license-o:before,
.fa-id-card-o:before {
  content: "\f2c3";
}
.fa-quora:before {
  content: "\f2c4";
}
.fa-free-code-camp:before {
  content: "\f2c5";
}
.fa-telegram:before {
  content: "\f2c6";
}
.fa-thermometer-4:before,
.fa-thermometer:before,
.fa-thermometer-full:before {
  content: "\f2c7";
}
.fa-thermometer-3:before,
.fa-thermometer-three-quarters:before {
  content: "\f2c8";
}
.fa-thermometer-2:before,
.fa-thermometer-half:before {
  content: "\f2c9";
}
.fa-thermometer-1:before,
.fa-thermometer-quarter:before {
  content: "\f2ca";
}
.fa-thermometer-0:before,
.fa-thermometer-empty:before {
  content: "\f2cb";
}
.fa-shower:before {
  content: "\f2cc";
}
.fa-bathtub:before,
.fa-s15:before,
.fa-bath:before {
  content: "\f2cd";
}
.fa-podcast:before {
  content: "\f2ce";
}
.fa-window-maximize:before {
  content: "\f2d0";
}
.fa-window-minimize:before {
  content: "\f2d1";
}
.fa-window-restore:before {
  content: "\f2d2";
}
.fa-times-rectangle:before,
.fa-window-close:before {
  content: "\f2d3";
}
.fa-times-rectangle-o:before,
.fa-window-close-o:before {
  content: "\f2d4";
}
.fa-bandcamp:before {
  content: "\f2d5";
}
.fa-grav:before {
  content: "\f2d6";
}
.fa-etsy:before {
  content: "\f2d7";
}
.fa-imdb:before {
  content: "\f2d8";
}
.fa-ravelry:before {
  content: "\f2d9";
}
.fa-eercast:before {
  content: "\f2da";
}
.fa-microchip:before {
  content: "\f2db";
}
.fa-snowflake-o:before {
  content: "\f2dc";
}
.fa-superpowers:before {
  content: "\f2dd";
}
.fa-wpexplorer:before {
  content: "\f2de";
}
.fa-meetup:before {
  content: "\f2e0";
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
/*!
*
* IPython base
*
*/
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
code {
  color: #000;
}
pre {
  font-size: inherit;
  line-height: inherit;
}
label {
  font-weight: normal;
}
/* Make the page background atleast 100% the height of the view port */
/* Make the page itself atleast 70% the height of the view port */
.border-box-sizing {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.corner-all {
  border-radius: 2px;
}
.no-padding {
  padding: 0px;
}
/* Flexible box model classes */
/* Taken from Alex Russell http://infrequently.org/2009/08/css-3-progress/ */
/* This file is a compatability layer.  It allows the usage of flexible box 
model layouts accross multiple browsers, including older browsers.  The newest,
universal implementation of the flexible box model is used when available (see
`Modern browsers` comments below).  Browsers that are known to implement this 
new spec completely include:

    Firefox 28.0+
    Chrome 29.0+
    Internet Explorer 11+ 
    Opera 17.0+

Browsers not listed, including Safari, are supported via the styling under the
`Old browsers` comments below.
*/
.hbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
.hbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.vbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
.vbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.hbox.reverse,
.vbox.reverse,
.reverse {
  /* Old browsers */
  -webkit-box-direction: reverse;
  -moz-box-direction: reverse;
  box-direction: reverse;
  /* Modern browsers */
  flex-direction: row-reverse;
}
.hbox.box-flex0,
.vbox.box-flex0,
.box-flex0 {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
  width: auto;
}
.hbox.box-flex1,
.vbox.box-flex1,
.box-flex1 {
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex,
.vbox.box-flex,
.box-flex {
  /* Old browsers */
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex2,
.vbox.box-flex2,
.box-flex2 {
  /* Old browsers */
  -webkit-box-flex: 2;
  -moz-box-flex: 2;
  box-flex: 2;
  /* Modern browsers */
  flex: 2;
}
.box-group1 {
  /*  Deprecated */
  -webkit-box-flex-group: 1;
  -moz-box-flex-group: 1;
  box-flex-group: 1;
}
.box-group2 {
  /* Deprecated */
  -webkit-box-flex-group: 2;
  -moz-box-flex-group: 2;
  box-flex-group: 2;
}
.hbox.start,
.vbox.start,
.start {
  /* Old browsers */
  -webkit-box-pack: start;
  -moz-box-pack: start;
  box-pack: start;
  /* Modern browsers */
  justify-content: flex-start;
}
.hbox.end,
.vbox.end,
.end {
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
}
.hbox.center,
.vbox.center,
.center {
  /* Old browsers */
  -webkit-box-pack: center;
  -moz-box-pack: center;
  box-pack: center;
  /* Modern browsers */
  justify-content: center;
}
.hbox.baseline,
.vbox.baseline,
.baseline {
  /* Old browsers */
  -webkit-box-pack: baseline;
  -moz-box-pack: baseline;
  box-pack: baseline;
  /* Modern browsers */
  justify-content: baseline;
}
.hbox.stretch,
.vbox.stretch,
.stretch {
  /* Old browsers */
  -webkit-box-pack: stretch;
  -moz-box-pack: stretch;
  box-pack: stretch;
  /* Modern browsers */
  justify-content: stretch;
}
.hbox.align-start,
.vbox.align-start,
.align-start {
  /* Old browsers */
  -webkit-box-align: start;
  -moz-box-align: start;
  box-align: start;
  /* Modern browsers */
  align-items: flex-start;
}
.hbox.align-end,
.vbox.align-end,
.align-end {
  /* Old browsers */
  -webkit-box-align: end;
  -moz-box-align: end;
  box-align: end;
  /* Modern browsers */
  align-items: flex-end;
}
.hbox.align-center,
.vbox.align-center,
.align-center {
  /* Old browsers */
  -webkit-box-align: center;
  -moz-box-align: center;
  box-align: center;
  /* Modern browsers */
  align-items: center;
}
.hbox.align-baseline,
.vbox.align-baseline,
.align-baseline {
  /* Old browsers */
  -webkit-box-align: baseline;
  -moz-box-align: baseline;
  box-align: baseline;
  /* Modern browsers */
  align-items: baseline;
}
.hbox.align-stretch,
.vbox.align-stretch,
.align-stretch {
  /* Old browsers */
  -webkit-box-align: stretch;
  -moz-box-align: stretch;
  box-align: stretch;
  /* Modern browsers */
  align-items: stretch;
}
div.error {
  margin: 2em;
  text-align: center;
}
div.error > h1 {
  font-size: 500%;
  line-height: normal;
}
div.error > p {
  font-size: 200%;
  line-height: normal;
}
div.traceback-wrapper {
  text-align: left;
  max-width: 800px;
  margin: auto;
}
div.traceback-wrapper pre.traceback {
  max-height: 600px;
  overflow: auto;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
body {
  background-color: #fff;
  /* This makes sure that the body covers the entire window and needs to
       be in a different element than the display: box in wrapper below */
  position: absolute;
  left: 0px;
  right: 0px;
  top: 0px;
  bottom: 0px;
  overflow: visible;
}
body > #header {
  /* Initially hidden to prevent FLOUC */
  display: none;
  background-color: #fff;
  /* Display over codemirror */
  position: relative;
  z-index: 100;
}
body > #header #header-container {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  padding: 5px;
  padding-bottom: 5px;
  padding-top: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
body > #header .header-bar {
  width: 100%;
  height: 1px;
  background: #e7e7e7;
  margin-bottom: -1px;
}
@media print {
  body > #header {
    display: none !important;
  }
}
#header-spacer {
  width: 100%;
  visibility: hidden;
}
@media print {
  #header-spacer {
    display: none;
  }
}
#ipython_notebook {
  padding-left: 0px;
  padding-top: 1px;
  padding-bottom: 1px;
}
[dir="rtl"] #ipython_notebook {
  margin-right: 10px;
  margin-left: 0;
}
[dir="rtl"] #ipython_notebook.pull-left {
  float: right !important;
  float: right;
}
.flex-spacer {
  flex: 1;
}
#noscript {
  width: auto;
  padding-top: 16px;
  padding-bottom: 16px;
  text-align: center;
  font-size: 22px;
  color: red;
  font-weight: bold;
}
#ipython_notebook img {
  height: 28px;
}
#site {
  width: 100%;
  display: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  overflow: auto;
}
@media print {
  #site {
    height: auto !important;
  }
}
/* Smaller buttons */
.ui-button .ui-button-text {
  padding: 0.2em 0.8em;
  font-size: 77%;
}
input.ui-button {
  padding: 0.3em 0.9em;
}
span#kernel_logo_widget {
  margin: 0 10px;
}
span#login_widget {
  float: right;
}
[dir="rtl"] span#login_widget {
  float: left;
}
span#login_widget > .button,
#logout {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button:focus,
#logout:focus,
span#login_widget > .button.focus,
#logout.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
span#login_widget > .button:hover,
#logout:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active:hover,
#logout:active:hover,
span#login_widget > .button.active:hover,
#logout.active:hover,
.open > .dropdown-togglespan#login_widget > .button:hover,
.open > .dropdown-toggle#logout:hover,
span#login_widget > .button:active:focus,
#logout:active:focus,
span#login_widget > .button.active:focus,
#logout.active:focus,
.open > .dropdown-togglespan#login_widget > .button:focus,
.open > .dropdown-toggle#logout:focus,
span#login_widget > .button:active.focus,
#logout:active.focus,
span#login_widget > .button.active.focus,
#logout.active.focus,
.open > .dropdown-togglespan#login_widget > .button.focus,
.open > .dropdown-toggle#logout.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  background-image: none;
}
span#login_widget > .button.disabled:hover,
#logout.disabled:hover,
span#login_widget > .button[disabled]:hover,
#logout[disabled]:hover,
fieldset[disabled] span#login_widget > .button:hover,
fieldset[disabled] #logout:hover,
span#login_widget > .button.disabled:focus,
#logout.disabled:focus,
span#login_widget > .button[disabled]:focus,
#logout[disabled]:focus,
fieldset[disabled] span#login_widget > .button:focus,
fieldset[disabled] #logout:focus,
span#login_widget > .button.disabled.focus,
#logout.disabled.focus,
span#login_widget > .button[disabled].focus,
#logout[disabled].focus,
fieldset[disabled] span#login_widget > .button.focus,
fieldset[disabled] #logout.focus {
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button .badge,
#logout .badge {
  color: #fff;
  background-color: #333;
}
.nav-header {
  text-transform: none;
}
#header > span {
  margin-top: 10px;
}
.modal_stretch .modal-dialog {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  min-height: 80vh;
}
.modal_stretch .modal-dialog .modal-body {
  max-height: calc(100vh - 200px);
  overflow: auto;
  flex: 1;
}
.modal-header {
  cursor: move;
}
@media (min-width: 768px) {
  .modal .modal-dialog {
    width: 700px;
  }
}
@media (min-width: 768px) {
  select.form-control {
    margin-left: 12px;
    margin-right: 12px;
  }
}
/*!
*
* IPython auth
*
*/
.center-nav {
  display: inline-block;
  margin-bottom: -4px;
}
[dir="rtl"] .center-nav form.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] .center-nav .navbar-text {
  float: right;
}
[dir="rtl"] .navbar-inner {
  text-align: right;
}
[dir="rtl"] div.text-left {
  text-align: right;
}
/*!
*
* IPython tree view
*
*/
/* We need an invisible input field on top of the sentense*/
/* "Drag file onto the list ..." */
.alternate_upload {
  background-color: none;
  display: inline;
}
.alternate_upload.form {
  padding: 0;
  margin: 0;
}
.alternate_upload input.fileinput {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  overflow: hidden;
  cursor: pointer;
  opacity: 0;
  z-index: 2;
}
.alternate_upload .btn-xs > input.fileinput {
  margin: -1px -5px;
}
.alternate_upload .btn-upload {
  position: relative;
  height: 22px;
}
::-webkit-file-upload-button {
  cursor: pointer;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
ul#tabs {
  margin-bottom: 4px;
}
ul#tabs a {
  padding-top: 6px;
  padding-bottom: 4px;
}
[dir="rtl"] ul#tabs.nav-tabs > li {
  float: right;
}
[dir="rtl"] ul#tabs.nav.nav-tabs {
  padding-right: 0;
}
ul.breadcrumb a:focus,
ul.breadcrumb a:hover {
  text-decoration: none;
}
ul.breadcrumb i.icon-home {
  font-size: 16px;
  margin-right: 4px;
}
ul.breadcrumb span {
  color: #5e5e5e;
}
.list_toolbar {
  padding: 4px 0 4px 0;
  vertical-align: middle;
}
.list_toolbar .tree-buttons {
  padding-top: 1px;
}
[dir="rtl"] .list_toolbar .tree-buttons .pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .list_toolbar .col-sm-4,
[dir="rtl"] .list_toolbar .col-sm-8 {
  float: right;
}
.dynamic-buttons {
  padding-top: 3px;
  display: inline-block;
}
.list_toolbar [class*="span"] {
  min-height: 24px;
}
.list_header {
  font-weight: bold;
  background-color: #EEE;
}
.list_placeholder {
  font-weight: bold;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
}
.list_container {
  margin-top: 4px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 2px;
}
.list_container > div {
  border-bottom: 1px solid #ddd;
}
.list_container > div:hover .list-item {
  background-color: red;
}
.list_container > div:last-child {
  border: none;
}
.list_item:hover .list_item {
  background-color: #ddd;
}
.list_item a {
  text-decoration: none;
}
.list_item:hover {
  background-color: #fafafa;
}
.list_header > div,
.list_item > div {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
.list_header > div input,
.list_item > div input {
  margin-right: 7px;
  margin-left: 14px;
  vertical-align: text-bottom;
  line-height: 22px;
  position: relative;
  top: -1px;
}
.list_header > div .item_link,
.list_item > div .item_link {
  margin-left: -1px;
  vertical-align: baseline;
  line-height: 22px;
}
[dir="rtl"] .list_item > div input {
  margin-right: 0;
}
.new-file input[type=checkbox] {
  visibility: hidden;
}
.item_name {
  line-height: 22px;
  height: 24px;
}
.item_icon {
  font-size: 14px;
  color: #5e5e5e;
  margin-right: 7px;
  margin-left: 7px;
  line-height: 22px;
  vertical-align: baseline;
}
.item_modified {
  margin-right: 7px;
  margin-left: 7px;
}
[dir="rtl"] .item_modified.pull-right {
  float: left !important;
  float: left;
}
.item_buttons {
  line-height: 1em;
  margin-left: -5px;
}
.item_buttons .btn,
.item_buttons .btn-group,
.item_buttons .input-group {
  float: left;
}
.item_buttons > .btn,
.item_buttons > .btn-group,
.item_buttons > .input-group {
  margin-left: 5px;
}
.item_buttons .btn {
  min-width: 13ex;
}
.item_buttons .running-indicator {
  padding-top: 4px;
  color: #5cb85c;
}
.item_buttons .kernel-name {
  padding-top: 4px;
  color: #5bc0de;
  margin-right: 7px;
  float: left;
}
[dir="rtl"] .item_buttons.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .item_buttons .kernel-name {
  margin-left: 7px;
  float: right;
}
.toolbar_info {
  height: 24px;
  line-height: 24px;
}
.list_item input:not([type=checkbox]) {
  padding-top: 3px;
  padding-bottom: 3px;
  height: 22px;
  line-height: 14px;
  margin: 0px;
}
.highlight_text {
  color: blue;
}
#project_name {
  display: inline-block;
  padding-left: 7px;
  margin-left: -2px;
}
#project_name > .breadcrumb {
  padding: 0px;
  margin-bottom: 0px;
  background-color: transparent;
  font-weight: bold;
}
.sort_button {
  display: inline-block;
  padding-left: 7px;
}
[dir="rtl"] .sort_button.pull-right {
  float: left !important;
  float: left;
}
#tree-selector {
  padding-right: 0px;
}
#button-select-all {
  min-width: 50px;
}
[dir="rtl"] #button-select-all.btn {
  float: right ;
}
#select-all {
  margin-left: 7px;
  margin-right: 2px;
  margin-top: 2px;
  height: 16px;
}
[dir="rtl"] #select-all.pull-left {
  float: right !important;
  float: right;
}
.menu_icon {
  margin-right: 2px;
}
.tab-content .row {
  margin-left: 0px;
  margin-right: 0px;
}
.folder_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f114";
}
.folder_icon:before.fa-pull-left {
  margin-right: .3em;
}
.folder_icon:before.fa-pull-right {
  margin-left: .3em;
}
.folder_icon:before.pull-left {
  margin-right: .3em;
}
.folder_icon:before.pull-right {
  margin-left: .3em;
}
.notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
}
.notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.notebook_icon:before.pull-left {
  margin-right: .3em;
}
.notebook_icon:before.pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
  color: #5cb85c;
}
.running_notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before.pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.pull-right {
  margin-left: .3em;
}
.file_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f016";
  position: relative;
  top: -2px;
}
.file_icon:before.fa-pull-left {
  margin-right: .3em;
}
.file_icon:before.fa-pull-right {
  margin-left: .3em;
}
.file_icon:before.pull-left {
  margin-right: .3em;
}
.file_icon:before.pull-right {
  margin-left: .3em;
}
#notebook_toolbar .pull-right {
  padding-top: 0px;
  margin-right: -1px;
}
ul#new-menu {
  left: auto;
  right: 0;
}
#new-menu .dropdown-header {
  font-size: 10px;
  border-bottom: 1px solid #e5e5e5;
  padding: 0 0 3px;
  margin: -3px 20px 0;
}
.kernel-menu-icon {
  padding-right: 12px;
  width: 24px;
  content: "\f096";
}
.kernel-menu-icon:before {
  content: "\f096";
}
.kernel-menu-icon-current:before {
  content: "\f00c";
}
#tab_content {
  padding-top: 20px;
}
#running .panel-group .panel {
  margin-top: 3px;
  margin-bottom: 1em;
}
#running .panel-group .panel .panel-heading {
  background-color: #EEE;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
#running .panel-group .panel .panel-heading a:focus,
#running .panel-group .panel .panel-heading a:hover {
  text-decoration: none;
}
#running .panel-group .panel .panel-body {
  padding: 0px;
}
#running .panel-group .panel .panel-body .list_container {
  margin-top: 0px;
  margin-bottom: 0px;
  border: 0px;
  border-radius: 0px;
}
#running .panel-group .panel .panel-body .list_container .list_item {
  border-bottom: 1px solid #ddd;
}
#running .panel-group .panel .panel-body .list_container .list_item:last-child {
  border-bottom: 0px;
}
.delete-button {
  display: none;
}
.duplicate-button {
  display: none;
}
.rename-button {
  display: none;
}
.move-button {
  display: none;
}
.download-button {
  display: none;
}
.shutdown-button {
  display: none;
}
.dynamic-instructions {
  display: inline-block;
  padding-top: 4px;
}
/*!
*
* IPython text editor webapp
*
*/
.selected-keymap i.fa {
  padding: 0px 5px;
}
.selected-keymap i.fa:before {
  content: "\f00c";
}
#mode-menu {
  overflow: auto;
  max-height: 20em;
}
.edit_app #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.edit_app #menubar .navbar {
  /* Use a negative 1 bottom margin, so the border overlaps the border of the
    header */
  margin-bottom: -1px;
}
.dirty-indicator {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator.pull-left {
  margin-right: .3em;
}
.dirty-indicator.pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-dirty.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty.pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-clean.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f00c";
}
.dirty-indicator-clean:before.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.pull-right {
  margin-left: .3em;
}
#filename {
  font-size: 16pt;
  display: table;
  padding: 0px 5px;
}
#current-mode {
  padding-left: 5px;
  padding-right: 5px;
}
#texteditor-backdrop {
  padding-top: 20px;
  padding-bottom: 20px;
}
@media not print {
  #texteditor-backdrop {
    background-color: #EEE;
  }
}
@media print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container {
    padding: 0px;
    background-color: #fff;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
.CodeMirror-dialog {
  background-color: #fff;
}
/*!
*
* IPython notebook
*
*/
/* CSS font colors for translated ANSI escape sequences */
/* The color values are a mix of
   http://www.xcolors.net/dl/baskerville-ivorylight and
   http://www.xcolors.net/dl/euphrasia */
.ansi-black-fg {
  color: #3E424D;
}
.ansi-black-bg {
  background-color: #3E424D;
}
.ansi-black-intense-fg {
  color: #282C36;
}
.ansi-black-intense-bg {
  background-color: #282C36;
}
.ansi-red-fg {
  color: #E75C58;
}
.ansi-red-bg {
  background-color: #E75C58;
}
.ansi-red-intense-fg {
  color: #B22B31;
}
.ansi-red-intense-bg {
  background-color: #B22B31;
}
.ansi-green-fg {
  color: #00A250;
}
.ansi-green-bg {
  background-color: #00A250;
}
.ansi-green-intense-fg {
  color: #007427;
}
.ansi-green-intense-bg {
  background-color: #007427;
}
.ansi-yellow-fg {
  color: #DDB62B;
}
.ansi-yellow-bg {
  background-color: #DDB62B;
}
.ansi-yellow-intense-fg {
  color: #B27D12;
}
.ansi-yellow-intense-bg {
  background-color: #B27D12;
}
.ansi-blue-fg {
  color: #208FFB;
}
.ansi-blue-bg {
  background-color: #208FFB;
}
.ansi-blue-intense-fg {
  color: #0065CA;
}
.ansi-blue-intense-bg {
  background-color: #0065CA;
}
.ansi-magenta-fg {
  color: #D160C4;
}
.ansi-magenta-bg {
  background-color: #D160C4;
}
.ansi-magenta-intense-fg {
  color: #A03196;
}
.ansi-magenta-intense-bg {
  background-color: #A03196;
}
.ansi-cyan-fg {
  color: #60C6C8;
}
.ansi-cyan-bg {
  background-color: #60C6C8;
}
.ansi-cyan-intense-fg {
  color: #258F8F;
}
.ansi-cyan-intense-bg {
  background-color: #258F8F;
}
.ansi-white-fg {
  color: #C5C1B4;
}
.ansi-white-bg {
  background-color: #C5C1B4;
}
.ansi-white-intense-fg {
  color: #A1A6B2;
}
.ansi-white-intense-bg {
  background-color: #A1A6B2;
}
.ansi-default-inverse-fg {
  color: #FFFFFF;
}
.ansi-default-inverse-bg {
  background-color: #000000;
}
.ansi-bold {
  font-weight: bold;
}
.ansi-underline {
  text-decoration: underline;
}
/* The following styles are deprecated an will be removed in a future version */
.ansibold {
  font-weight: bold;
}
.ansi-inverse {
  outline: 0.5px dotted;
}
/* use dark versions for foreground, to improve visibility */
.ansiblack {
  color: black;
}
.ansired {
  color: darkred;
}
.ansigreen {
  color: darkgreen;
}
.ansiyellow {
  color: #c4a000;
}
.ansiblue {
  color: darkblue;
}
.ansipurple {
  color: darkviolet;
}
.ansicyan {
  color: steelblue;
}
.ansigray {
  color: gray;
}
/* and light for background, for the same reason */
.ansibgblack {
  background-color: black;
}
.ansibgred {
  background-color: red;
}
.ansibggreen {
  background-color: green;
}
.ansibgyellow {
  background-color: yellow;
}
.ansibgblue {
  background-color: blue;
}
.ansibgpurple {
  background-color: magenta;
}
.ansibgcyan {
  background-color: cyan;
}
.ansibggray {
  background-color: gray;
}
div.cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  border-radius: 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  border-width: 1px;
  border-style: solid;
  border-color: transparent;
  width: 100%;
  padding: 5px;
  /* This acts as a spacer between cells, that is outside the border */
  margin: 0px;
  outline: none;
  position: relative;
  overflow: visible;
}
div.cell:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: transparent;
}
div.cell.jupyter-soft-selected {
  border-left-color: #E3F2FD;
  border-left-width: 1px;
  padding-left: 5px;
  border-right-color: #E3F2FD;
  border-right-width: 1px;
  background: #E3F2FD;
}
@media print {
  div.cell.jupyter-soft-selected {
    border-color: transparent;
  }
}
div.cell.selected,
div.cell.selected.jupyter-soft-selected {
  border-color: #ababab;
}
div.cell.selected:before,
div.cell.selected.jupyter-soft-selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #42A5F5;
}
@media print {
  div.cell.selected,
  div.cell.selected.jupyter-soft-selected {
    border-color: transparent;
  }
}
.edit_mode div.cell.selected {
  border-color: #66BB6A;
}
.edit_mode div.cell.selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #66BB6A;
}
@media print {
  .edit_mode div.cell.selected {
    border-color: transparent;
  }
}
.prompt {
  /* This needs to be wide enough for 3 digit prompt numbers: In[100]: */
  min-width: 14ex;
  /* This padding is tuned to match the padding on the CodeMirror editor. */
  padding: 0.4em;
  margin: 0px;
  font-family: monospace;
  text-align: right;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
  /* Don't highlight prompt number selection */
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  /* Use default cursor */
  cursor: default;
}
@media (max-width: 540px) {
  .prompt {
    text-align: left;
  }
}
div.inner_cell {
  min-width: 0;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_area {
  border: 1px solid #cfcfcf;
  border-radius: 2px;
  background: #f7f7f7;
  line-height: 1.21429em;
}
/* This is needed so that empty prompt areas can collapse to zero height when there
   is no content in the output_subarea and the prompt. The main purpose of this is
   to make sure that empty JavaScript output_subareas have no height. */
div.prompt:empty {
  padding-top: 0;
  padding-bottom: 0;
}
div.unrecognized_cell {
  padding: 5px 5px 5px 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.unrecognized_cell .inner_cell {
  border-radius: 2px;
  padding: 5px;
  font-weight: bold;
  color: red;
  border: 1px solid #cfcfcf;
  background: #eaeaea;
}
div.unrecognized_cell .inner_cell a {
  color: inherit;
  text-decoration: none;
}
div.unrecognized_cell .inner_cell a:hover {
  color: inherit;
  text-decoration: none;
}
@media (max-width: 540px) {
  div.unrecognized_cell > div.prompt {
    display: none;
  }
}
div.code_cell {
  /* avoid page breaking on code cells when printing */
}
@media print {
  div.code_cell {
    page-break-inside: avoid;
  }
}
/* any special styling for code cells that are currently running goes here */
div.input {
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.input {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_prompt {
  color: #303F9F;
  border-top: 1px solid transparent;
}
div.input_area > div.highlight {
  margin: 0.4em;
  border: none;
  padding: 0px;
  background-color: transparent;
}
div.input_area > div.highlight > pre {
  margin: 0px;
  border: none;
  padding: 0px;
  background-color: transparent;
}
/* The following gets added to the <head> if it is detected that the user has a
 * monospace font with inconsistent normal/bold/italic height.  See
 * notebookmain.js.  Such fonts will have keywords vertically offset with
 * respect to the rest of the text.  The user should select a better font.
 * See: https://github.com/ipython/ipython/issues/1503
 *
 * .CodeMirror span {
 *      vertical-align: bottom;
 * }
 */
.CodeMirror {
  line-height: 1.21429em;
  /* Changed from 1em to our global default */
  font-size: 14px;
  height: auto;
  /* Changed to auto to autogrow */
  background: none;
  /* Changed from white to allow our bg to show through */
}
.CodeMirror-scroll {
  /*  The CodeMirror docs are a bit fuzzy on if overflow-y should be hidden or visible.*/
  /*  We have found that if it is visible, vertical scrollbars appear with font size changes.*/
  overflow-y: hidden;
  overflow-x: auto;
}
.CodeMirror-lines {
  /* In CM2, this used to be 0.4em, but in CM3 it went to 4px. We need the em value because */
  /* we have set a different line-height and want this to scale with that. */
  /* Note that this should set vertical padding only, since CodeMirror assumes
       that horizontal padding will be set on CodeMirror pre */
  padding: 0.4em 0;
}
.CodeMirror-linenumber {
  padding: 0 8px 0 4px;
}
.CodeMirror-gutters {
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.CodeMirror pre {
  /* In CM3 this went to 4px from 0 in CM2. This sets horizontal padding only,
    use .CodeMirror-lines for vertical */
  padding: 0 0.4em;
  border: 0;
  border-radius: 0;
}
.CodeMirror-cursor {
  border-left: 1.4px solid black;
}
@media screen and (min-width: 2138px) and (max-width: 4319px) {
  .CodeMirror-cursor {
    border-left: 2px solid black;
  }
}
@media screen and (min-width: 4320px) {
  .CodeMirror-cursor {
    border-left: 4px solid black;
  }
}
/*

Original style from softwaremaniacs.org (c) Ivan Sagalaev <Maniac@SoftwareManiacs.Org>
Adapted from GitHub theme

*/
.highlight-base {
  color: #000;
}
.highlight-variable {
  color: #000;
}
.highlight-variable-2 {
  color: #1a1a1a;
}
.highlight-variable-3 {
  color: #333333;
}
.highlight-string {
  color: #BA2121;
}
.highlight-comment {
  color: #408080;
  font-style: italic;
}
.highlight-number {
  color: #080;
}
.highlight-atom {
  color: #88F;
}
.highlight-keyword {
  color: #008000;
  font-weight: bold;
}
.highlight-builtin {
  color: #008000;
}
.highlight-error {
  color: #f00;
}
.highlight-operator {
  color: #AA22FF;
  font-weight: bold;
}
.highlight-meta {
  color: #AA22FF;
}
/* previously not defined, copying from default codemirror */
.highlight-def {
  color: #00f;
}
.highlight-string-2 {
  color: #f50;
}
.highlight-qualifier {
  color: #555;
}
.highlight-bracket {
  color: #997;
}
.highlight-tag {
  color: #170;
}
.highlight-attribute {
  color: #00c;
}
.highlight-header {
  color: blue;
}
.highlight-quote {
  color: #090;
}
.highlight-link {
  color: #00c;
}
/* apply the same style to codemirror */
.cm-s-ipython span.cm-keyword {
  color: #008000;
  font-weight: bold;
}
.cm-s-ipython span.cm-atom {
  color: #88F;
}
.cm-s-ipython span.cm-number {
  color: #080;
}
.cm-s-ipython span.cm-def {
  color: #00f;
}
.cm-s-ipython span.cm-variable {
  color: #000;
}
.cm-s-ipython span.cm-operator {
  color: #AA22FF;
  font-weight: bold;
}
.cm-s-ipython span.cm-variable-2 {
  color: #1a1a1a;
}
.cm-s-ipython span.cm-variable-3 {
  color: #333333;
}
.cm-s-ipython span.cm-comment {
  color: #408080;
  font-style: italic;
}
.cm-s-ipython span.cm-string {
  color: #BA2121;
}
.cm-s-ipython span.cm-string-2 {
  color: #f50;
}
.cm-s-ipython span.cm-meta {
  color: #AA22FF;
}
.cm-s-ipython span.cm-qualifier {
  color: #555;
}
.cm-s-ipython span.cm-builtin {
  color: #008000;
}
.cm-s-ipython span.cm-bracket {
  color: #997;
}
.cm-s-ipython span.cm-tag {
  color: #170;
}
.cm-s-ipython span.cm-attribute {
  color: #00c;
}
.cm-s-ipython span.cm-header {
  color: blue;
}
.cm-s-ipython span.cm-quote {
  color: #090;
}
.cm-s-ipython span.cm-link {
  color: #00c;
}
.cm-s-ipython span.cm-error {
  color: #f00;
}
.cm-s-ipython span.cm-tab {
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAMCAYAAAAkuj5RAAAAAXNSR0IArs4c6QAAAGFJREFUSMft1LsRQFAQheHPowAKoACx3IgEKtaEHujDjORSgWTH/ZOdnZOcM/sgk/kFFWY0qV8foQwS4MKBCS3qR6ixBJvElOobYAtivseIE120FaowJPN75GMu8j/LfMwNjh4HUpwg4LUAAAAASUVORK5CYII=);
  background-position: right;
  background-repeat: no-repeat;
}
div.output_wrapper {
  /* this position must be relative to enable descendents to be absolute within it */
  position: relative;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  z-index: 1;
}
/* class for the output area when it should be height-limited */
div.output_scroll {
  /* ideally, this would be max-height, but FF barfs all over that */
  height: 24em;
  /* FF needs this *and the wrapper* to specify full width, or it will shrinkwrap */
  width: 100%;
  overflow: auto;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  display: block;
}
/* output div while it is collapsed */
div.output_collapsed {
  margin: 0px;
  padding: 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
div.out_prompt_overlay {
  height: 100%;
  padding: 0px 0.4em;
  position: absolute;
  border-radius: 2px;
}
div.out_prompt_overlay:hover {
  /* use inner shadow to get border that is computed the same on WebKit/FF */
  -webkit-box-shadow: inset 0 0 1px #000;
  box-shadow: inset 0 0 1px #000;
  background: rgba(240, 240, 240, 0.5);
}
div.output_prompt {
  color: #D84315;
}
/* This class is the outer container of all output sections. */
div.output_area {
  padding: 0px;
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.output_area .MathJax_Display {
  text-align: left !important;
}
div.output_area .rendered_html table {
  margin-left: 0;
  margin-right: 0;
}
div.output_area .rendered_html img {
  margin-left: 0;
  margin-right: 0;
}
div.output_area img,
div.output_area svg {
  max-width: 100%;
  height: auto;
}
div.output_area img.unconfined,
div.output_area svg.unconfined {
  max-width: none;
}
div.output_area .mglyph > img {
  max-width: none;
}
/* This is needed to protect the pre formating from global settings such
   as that of bootstrap */
.output {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.output_area {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
div.output_area pre {
  margin: 0;
  padding: 1px 0 1px 0;
  border: 0;
  vertical-align: baseline;
  color: black;
  background-color: transparent;
  border-radius: 0;
}
/* This class is for the output subarea inside the output_area and after
   the prompt div. */
div.output_subarea {
  overflow-x: auto;
  padding: 0.4em;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
  max-width: calc(100% - 14ex);
}
div.output_scroll div.output_subarea {
  overflow-x: visible;
}
/* The rest of the output_* classes are for special styling of the different
   output types */
/* all text output has this class: */
div.output_text {
  text-align: left;
  color: #000;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
}
/* stdout/stderr are 'text' as well as 'stream', but execute_result/error are *not* streams */
div.output_stderr {
  background: #fdd;
  /* very light red background for stderr */
}
div.output_latex {
  text-align: left;
}
/* Empty output_javascript divs should have no height */
div.output_javascript:empty {
  padding: 0;
}
.js-error {
  color: darkred;
}
/* raw_input styles */
div.raw_input_container {
  line-height: 1.21429em;
  padding-top: 5px;
}
pre.raw_input_prompt {
  /* nothing needed here. */
}
input.raw_input {
  font-family: monospace;
  font-size: inherit;
  color: inherit;
  width: auto;
  /* make sure input baseline aligns with prompt */
  vertical-align: baseline;
  /* padding + margin = 0.5em between prompt and cursor */
  padding: 0em 0.25em;
  margin: 0em 0.25em;
}
input.raw_input:focus {
  box-shadow: none;
}
p.p-space {
  margin-bottom: 10px;
}
div.output_unrecognized {
  padding: 5px;
  font-weight: bold;
  color: red;
}
div.output_unrecognized a {
  color: inherit;
  text-decoration: none;
}
div.output_unrecognized a:hover {
  color: inherit;
  text-decoration: none;
}
.rendered_html {
  color: #000;
  /* any extras will just be numbers: */
}
.rendered_html em {
  font-style: italic;
}
.rendered_html strong {
  font-weight: bold;
}
.rendered_html u {
  text-decoration: underline;
}
.rendered_html :link {
  text-decoration: underline;
}
.rendered_html :visited {
  text-decoration: underline;
}
.rendered_html h1 {
  font-size: 185.7%;
  margin: 1.08em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h2 {
  font-size: 157.1%;
  margin: 1.27em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h3 {
  font-size: 128.6%;
  margin: 1.55em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h4 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h5 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h6 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h1:first-child {
  margin-top: 0.538em;
}
.rendered_html h2:first-child {
  margin-top: 0.636em;
}
.rendered_html h3:first-child {
  margin-top: 0.777em;
}
.rendered_html h4:first-child {
  margin-top: 1em;
}
.rendered_html h5:first-child {
  margin-top: 1em;
}
.rendered_html h6:first-child {
  margin-top: 1em;
}
.rendered_html ul:not(.list-inline),
.rendered_html ol:not(.list-inline) {
  padding-left: 2em;
}
.rendered_html ul {
  list-style: disc;
}
.rendered_html ul ul {
  list-style: square;
  margin-top: 0;
}
.rendered_html ul ul ul {
  list-style: circle;
}
.rendered_html ol {
  list-style: decimal;
}
.rendered_html ol ol {
  list-style: upper-alpha;
  margin-top: 0;
}
.rendered_html ol ol ol {
  list-style: lower-alpha;
}
.rendered_html ol ol ol ol {
  list-style: lower-roman;
}
.rendered_html ol ol ol ol ol {
  list-style: decimal;
}
.rendered_html * + ul {
  margin-top: 1em;
}
.rendered_html * + ol {
  margin-top: 1em;
}
.rendered_html hr {
  color: black;
  background-color: black;
}
.rendered_html pre {
  margin: 1em 2em;
  padding: 0px;
  background-color: #fff;
}
.rendered_html code {
  background-color: #eff0f1;
}
.rendered_html p code {
  padding: 1px 5px;
}
.rendered_html pre code {
  background-color: #fff;
}
.rendered_html pre,
.rendered_html code {
  border: 0;
  color: #000;
  font-size: 100%;
}
.rendered_html blockquote {
  margin: 1em 2em;
}
.rendered_html table {
  margin-left: auto;
  margin-right: auto;
  border: none;
  border-collapse: collapse;
  border-spacing: 0;
  color: black;
  font-size: 12px;
  table-layout: fixed;
}
.rendered_html thead {
  border-bottom: 1px solid black;
  vertical-align: bottom;
}
.rendered_html tr,
.rendered_html th,
.rendered_html td {
  text-align: right;
  vertical-align: middle;
  padding: 0.5em 0.5em;
  line-height: normal;
  white-space: normal;
  max-width: none;
  border: none;
}
.rendered_html th {
  font-weight: bold;
}
.rendered_html tbody tr:nth-child(odd) {
  background: #f5f5f5;
}
.rendered_html tbody tr:hover {
  background: rgba(66, 165, 245, 0.2);
}
.rendered_html * + table {
  margin-top: 1em;
}
.rendered_html p {
  text-align: left;
}
.rendered_html * + p {
  margin-top: 1em;
}
.rendered_html img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.rendered_html * + img {
  margin-top: 1em;
}
.rendered_html img,
.rendered_html svg {
  max-width: 100%;
  height: auto;
}
.rendered_html img.unconfined,
.rendered_html svg.unconfined {
  max-width: none;
}
.rendered_html .alert {
  margin-bottom: initial;
}
.rendered_html * + .alert {
  margin-top: 1em;
}
[dir="rtl"] .rendered_html p {
  text-align: right;
}
div.text_cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.text_cell > div.prompt {
    display: none;
  }
}
div.text_cell_render {
  /*font-family: "Helvetica Neue", Arial, Helvetica, Geneva, sans-serif;*/
  outline: none;
  resize: none;
  width: inherit;
  border-style: none;
  padding: 0.5em 0.5em 0.5em 0.4em;
  color: #000;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
a.anchor-link:link {
  text-decoration: none;
  padding: 0px 20px;
  visibility: hidden;
}
h1:hover .anchor-link,
h2:hover .anchor-link,
h3:hover .anchor-link,
h4:hover .anchor-link,
h5:hover .anchor-link,
h6:hover .anchor-link {
  visibility: visible;
}
.text_cell.rendered .input_area {
  display: none;
}
.text_cell.rendered .rendered_html {
  overflow-x: auto;
  overflow-y: hidden;
}
.text_cell.rendered .rendered_html tr,
.text_cell.rendered .rendered_html th,
.text_cell.rendered .rendered_html td {
  max-width: none;
}
.text_cell.unrendered .text_cell_render {
  display: none;
}
.text_cell .dropzone .input_area {
  border: 2px dashed #bababa;
  margin: -1px;
}
.cm-header-1,
.cm-header-2,
.cm-header-3,
.cm-header-4,
.cm-header-5,
.cm-header-6 {
  font-weight: bold;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.cm-header-1 {
  font-size: 185.7%;
}
.cm-header-2 {
  font-size: 157.1%;
}
.cm-header-3 {
  font-size: 128.6%;
}
.cm-header-4 {
  font-size: 110%;
}
.cm-header-5 {
  font-size: 100%;
  font-style: italic;
}
.cm-header-6 {
  font-size: 100%;
  font-style: italic;
}
/*!
*
* IPython notebook webapp
*
*/
@media (max-width: 767px) {
  .notebook_app {
    padding-left: 0px;
    padding-right: 0px;
  }
}
#ipython-main-app {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook_panel {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook {
  font-size: 14px;
  line-height: 20px;
  overflow-y: hidden;
  overflow-x: auto;
  width: 100%;
  /* This spaces the page away from the edge of the notebook area */
  padding-top: 20px;
  margin: 0px;
  outline: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  min-height: 100%;
}
@media not print {
  #notebook-container {
    padding: 15px;
    background-color: #fff;
    min-height: 0;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
@media print {
  #notebook-container {
    width: 100%;
  }
}
div.ui-widget-content {
  border: 1px solid #ababab;
  outline: none;
}
pre.dialog {
  background-color: #f7f7f7;
  border: 1px solid #ddd;
  border-radius: 2px;
  padding: 0.4em;
  padding-left: 2em;
}
p.dialog {
  padding: 0.2em;
}
/* Word-wrap output correctly.  This is the CSS3 spelling, though Firefox seems
   to not honor it correctly.  Webkit browsers (Chrome, rekonq, Safari) do.
 */
pre,
code,
kbd,
samp {
  white-space: pre-wrap;
}
#fonttest {
  font-family: monospace;
}
p {
  margin-bottom: 0;
}
.end_space {
  min-height: 100px;
  transition: height .2s ease;
}
.notebook_app > #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
@media not print {
  .notebook_app {
    background-color: #EEE;
  }
}
kbd {
  border-style: solid;
  border-width: 1px;
  box-shadow: none;
  margin: 2px;
  padding-left: 2px;
  padding-right: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
.jupyter-keybindings {
  padding: 1px;
  line-height: 24px;
  border-bottom: 1px solid gray;
}
.jupyter-keybindings input {
  margin: 0;
  padding: 0;
  border: none;
}
.jupyter-keybindings i {
  padding: 6px;
}
.well code {
  background-color: #ffffff;
  border-color: #ababab;
  border-width: 1px;
  border-style: solid;
  padding: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
/* CSS for the cell toolbar */
.celltoolbar {
  border: thin solid #CFCFCF;
  border-bottom: none;
  background: #EEE;
  border-radius: 2px 2px 0px 0px;
  width: 100%;
  height: 29px;
  padding-right: 4px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
  display: -webkit-flex;
}
@media print {
  .celltoolbar {
    display: none;
  }
}
.ctb_hideshow {
  display: none;
  vertical-align: bottom;
}
/* ctb_show is added to the ctb_hideshow div to show the cell toolbar.
   Cell toolbars are only shown when the ctb_global_show class is also set.
*/
.ctb_global_show .ctb_show.ctb_hideshow {
  display: block;
}
.ctb_global_show .ctb_show + .input_area,
.ctb_global_show .ctb_show + div.text_cell_input,
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border-top-right-radius: 0px;
  border-top-left-radius: 0px;
}
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border: 1px solid #cfcfcf;
}
.celltoolbar {
  font-size: 87%;
  padding-top: 3px;
}
.celltoolbar select {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  width: inherit;
  font-size: inherit;
  height: 22px;
  padding: 0px;
  display: inline-block;
}
.celltoolbar select:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.celltoolbar select::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.celltoolbar select:-ms-input-placeholder {
  color: #999;
}
.celltoolbar select::-webkit-input-placeholder {
  color: #999;
}
.celltoolbar select::-ms-expand {
  border: 0;
  background-color: transparent;
}
.celltoolbar select[disabled],
.celltoolbar select[readonly],
fieldset[disabled] .celltoolbar select {
  background-color: #eeeeee;
  opacity: 1;
}
.celltoolbar select[disabled],
fieldset[disabled] .celltoolbar select {
  cursor: not-allowed;
}
textarea.celltoolbar select {
  height: auto;
}
select.celltoolbar select {
  height: 30px;
  line-height: 30px;
}
textarea.celltoolbar select,
select[multiple].celltoolbar select {
  height: auto;
}
.celltoolbar label {
  margin-left: 5px;
  margin-right: 5px;
}
.tags_button_container {
  width: 100%;
  display: flex;
}
.tag-container {
  display: flex;
  flex-direction: row;
  flex-grow: 1;
  overflow: hidden;
  position: relative;
}
.tag-container > * {
  margin: 0 4px;
}
.remove-tag-btn {
  margin-left: 4px;
}
.tags-input {
  display: flex;
}
.cell-tag:last-child:after {
  content: "";
  position: absolute;
  right: 0;
  width: 40px;
  height: 100%;
  /* Fade to background color of cell toolbar */
  background: linear-gradient(to right, rgba(0, 0, 0, 0), #EEE);
}
.tags-input > * {
  margin-left: 4px;
}
.cell-tag,
.tags-input input,
.tags-input button {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  box-shadow: none;
  width: inherit;
  font-size: inherit;
  height: 22px;
  line-height: 22px;
  padding: 0px 4px;
  display: inline-block;
}
.cell-tag:focus,
.tags-input input:focus,
.tags-input button:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.cell-tag::-moz-placeholder,
.tags-input input::-moz-placeholder,
.tags-input button::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.cell-tag:-ms-input-placeholder,
.tags-input input:-ms-input-placeholder,
.tags-input button:-ms-input-placeholder {
  color: #999;
}
.cell-tag::-webkit-input-placeholder,
.tags-input input::-webkit-input-placeholder,
.tags-input button::-webkit-input-placeholder {
  color: #999;
}
.cell-tag::-ms-expand,
.tags-input input::-ms-expand,
.tags-input button::-ms-expand {
  border: 0;
  background-color: transparent;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
.cell-tag[readonly],
.tags-input input[readonly],
.tags-input button[readonly],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  background-color: #eeeeee;
  opacity: 1;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  cursor: not-allowed;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button {
  height: auto;
}
select.cell-tag,
select.tags-input input,
select.tags-input button {
  height: 30px;
  line-height: 30px;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button,
select[multiple].cell-tag,
select[multiple].tags-input input,
select[multiple].tags-input button {
  height: auto;
}
.cell-tag,
.tags-input button {
  padding: 0px 4px;
}
.cell-tag {
  background-color: #fff;
  white-space: nowrap;
}
.tags-input input[type=text]:focus {
  outline: none;
  box-shadow: none;
  border-color: #ccc;
}
.completions {
  position: absolute;
  z-index: 110;
  overflow: hidden;
  border: 1px solid #ababab;
  border-radius: 2px;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  line-height: 1;
}
.completions select {
  background: white;
  outline: none;
  border: none;
  padding: 0px;
  margin: 0px;
  overflow: auto;
  font-family: monospace;
  font-size: 110%;
  color: #000;
  width: auto;
}
.completions select option.context {
  color: #286090;
}
#kernel_logo_widget .current_kernel_logo {
  display: none;
  margin-top: -1px;
  margin-bottom: -1px;
  width: 32px;
  height: 32px;
}
[dir="rtl"] #kernel_logo_widget {
  float: left !important;
  float: left;
}
.modal .modal-body .move-path {
  display: flex;
  flex-direction: row;
  justify-content: space;
  align-items: center;
}
.modal .modal-body .move-path .server-root {
  padding-right: 20px;
}
.modal .modal-body .move-path .path-input {
  flex: 1;
}
#menubar {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  margin-top: 1px;
}
#menubar .navbar {
  border-top: 1px;
  border-radius: 0px 0px 2px 2px;
  margin-bottom: 0px;
}
#menubar .navbar-toggle {
  float: left;
  padding-top: 7px;
  padding-bottom: 7px;
  border: none;
}
#menubar .navbar-collapse {
  clear: left;
}
[dir="rtl"] #menubar .navbar-toggle {
  float: right;
}
[dir="rtl"] #menubar .navbar-collapse {
  clear: right;
}
[dir="rtl"] #menubar .navbar-nav {
  float: right;
}
[dir="rtl"] #menubar .nav {
  padding-right: 0px;
}
[dir="rtl"] #menubar .navbar-nav > li {
  float: right;
}
[dir="rtl"] #menubar .navbar-right {
  float: left !important;
}
[dir="rtl"] ul.dropdown-menu {
  text-align: right;
  left: auto;
}
[dir="rtl"] ul#new-menu.dropdown-menu {
  right: auto;
  left: 0;
}
.nav-wrapper {
  border-bottom: 1px solid #e7e7e7;
}
i.menu-icon {
  padding-top: 4px;
}
[dir="rtl"] i.menu-icon.pull-right {
  float: left !important;
  float: left;
}
ul#help_menu li a {
  overflow: hidden;
  padding-right: 2.2em;
}
ul#help_menu li a i {
  margin-right: -1.2em;
}
[dir="rtl"] ul#help_menu li a {
  padding-left: 2.2em;
}
[dir="rtl"] ul#help_menu li a i {
  margin-right: 0;
  margin-left: -1.2em;
}
[dir="rtl"] ul#help_menu li a i.pull-right {
  float: left !important;
  float: left;
}
.dropdown-submenu {
  position: relative;
}
.dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
}
[dir="rtl"] .dropdown-submenu > .dropdown-menu {
  right: 100%;
  margin-right: -1px;
}
.dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
.dropdown-submenu > a:after {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  display: block;
  content: "\f0da";
  float: right;
  color: #333333;
  margin-top: 2px;
  margin-right: -10px;
}
.dropdown-submenu > a:after.fa-pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.fa-pull-right {
  margin-left: .3em;
}
.dropdown-submenu > a:after.pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.pull-right {
  margin-left: .3em;
}
[dir="rtl"] .dropdown-submenu > a:after {
  float: left;
  content: "\f0d9";
  margin-right: 0;
  margin-left: -10px;
}
.dropdown-submenu:hover > a:after {
  color: #262626;
}
.dropdown-submenu.pull-left {
  float: none;
}
.dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
}
#notification_area {
  float: right !important;
  float: right;
  z-index: 10;
}
[dir="rtl"] #notification_area {
  float: left !important;
  float: left;
}
.indicator_area {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] .indicator_area {
  float: left !important;
  float: left;
}
#kernel_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  border-left: 1px solid;
}
#kernel_indicator .kernel_indicator_name {
  padding-left: 5px;
  padding-right: 5px;
}
[dir="rtl"] #kernel_indicator {
  float: left !important;
  float: left;
  border-left: 0;
  border-right: 1px solid;
}
#modal_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] #modal_indicator {
  float: left !important;
  float: left;
}
#readonly-indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  margin-top: 2px;
  margin-bottom: 0px;
  margin-left: 0px;
  margin-right: 0px;
  display: none;
}
.modal_indicator:before {
  width: 1.28571429em;
  text-align: center;
}
.edit_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f040";
}
.edit_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.edit_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: ' ';
}
.command_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f10c";
}
.kernel_idle_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f111";
}
.kernel_busy_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f1e2";
}
.kernel_dead_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f127";
}
.kernel_disconnected_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.pull-right {
  margin-left: .3em;
}
.notification_widget {
  color: #777;
  z-index: 10;
  background: rgba(240, 240, 240, 0.5);
  margin-right: 4px;
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget:focus,
.notification_widget.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.notification_widget:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active:hover,
.notification_widget.active:hover,
.open > .dropdown-toggle.notification_widget:hover,
.notification_widget:active:focus,
.notification_widget.active:focus,
.open > .dropdown-toggle.notification_widget:focus,
.notification_widget:active.focus,
.notification_widget.active.focus,
.open > .dropdown-toggle.notification_widget.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  background-image: none;
}
.notification_widget.disabled:hover,
.notification_widget[disabled]:hover,
fieldset[disabled] .notification_widget:hover,
.notification_widget.disabled:focus,
.notification_widget[disabled]:focus,
fieldset[disabled] .notification_widget:focus,
.notification_widget.disabled.focus,
.notification_widget[disabled].focus,
fieldset[disabled] .notification_widget.focus {
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget .badge {
  color: #fff;
  background-color: #333;
}
.notification_widget.warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning:focus,
.notification_widget.warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.notification_widget.warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active:hover,
.notification_widget.warning.active:hover,
.open > .dropdown-toggle.notification_widget.warning:hover,
.notification_widget.warning:active:focus,
.notification_widget.warning.active:focus,
.open > .dropdown-toggle.notification_widget.warning:focus,
.notification_widget.warning:active.focus,
.notification_widget.warning.active.focus,
.open > .dropdown-toggle.notification_widget.warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  background-image: none;
}
.notification_widget.warning.disabled:hover,
.notification_widget.warning[disabled]:hover,
fieldset[disabled] .notification_widget.warning:hover,
.notification_widget.warning.disabled:focus,
.notification_widget.warning[disabled]:focus,
fieldset[disabled] .notification_widget.warning:focus,
.notification_widget.warning.disabled.focus,
.notification_widget.warning[disabled].focus,
fieldset[disabled] .notification_widget.warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.notification_widget.success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success:focus,
.notification_widget.success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.notification_widget.success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active:hover,
.notification_widget.success.active:hover,
.open > .dropdown-toggle.notification_widget.success:hover,
.notification_widget.success:active:focus,
.notification_widget.success.active:focus,
.open > .dropdown-toggle.notification_widget.success:focus,
.notification_widget.success:active.focus,
.notification_widget.success.active.focus,
.open > .dropdown-toggle.notification_widget.success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  background-image: none;
}
.notification_widget.success.disabled:hover,
.notification_widget.success[disabled]:hover,
fieldset[disabled] .notification_widget.success:hover,
.notification_widget.success.disabled:focus,
.notification_widget.success[disabled]:focus,
fieldset[disabled] .notification_widget.success:focus,
.notification_widget.success.disabled.focus,
.notification_widget.success[disabled].focus,
fieldset[disabled] .notification_widget.success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.notification_widget.info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info:focus,
.notification_widget.info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.notification_widget.info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active:hover,
.notification_widget.info.active:hover,
.open > .dropdown-toggle.notification_widget.info:hover,
.notification_widget.info:active:focus,
.notification_widget.info.active:focus,
.open > .dropdown-toggle.notification_widget.info:focus,
.notification_widget.info:active.focus,
.notification_widget.info.active.focus,
.open > .dropdown-toggle.notification_widget.info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  background-image: none;
}
.notification_widget.info.disabled:hover,
.notification_widget.info[disabled]:hover,
fieldset[disabled] .notification_widget.info:hover,
.notification_widget.info.disabled:focus,
.notification_widget.info[disabled]:focus,
fieldset[disabled] .notification_widget.info:focus,
.notification_widget.info.disabled.focus,
.notification_widget.info[disabled].focus,
fieldset[disabled] .notification_widget.info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.notification_widget.danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger:focus,
.notification_widget.danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.notification_widget.danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active:hover,
.notification_widget.danger.active:hover,
.open > .dropdown-toggle.notification_widget.danger:hover,
.notification_widget.danger:active:focus,
.notification_widget.danger.active:focus,
.open > .dropdown-toggle.notification_widget.danger:focus,
.notification_widget.danger:active.focus,
.notification_widget.danger.active.focus,
.open > .dropdown-toggle.notification_widget.danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  background-image: none;
}
.notification_widget.danger.disabled:hover,
.notification_widget.danger[disabled]:hover,
fieldset[disabled] .notification_widget.danger:hover,
.notification_widget.danger.disabled:focus,
.notification_widget.danger[disabled]:focus,
fieldset[disabled] .notification_widget.danger:focus,
.notification_widget.danger.disabled.focus,
.notification_widget.danger[disabled].focus,
fieldset[disabled] .notification_widget.danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger .badge {
  color: #d9534f;
  background-color: #fff;
}
div#pager {
  background-color: #fff;
  font-size: 14px;
  line-height: 20px;
  overflow: hidden;
  display: none;
  position: fixed;
  bottom: 0px;
  width: 100%;
  max-height: 50%;
  padding-top: 8px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  /* Display over codemirror */
  z-index: 100;
  /* Hack which prevents jquery ui resizable from changing top. */
  top: auto !important;
}
div#pager pre {
  line-height: 1.21429em;
  color: #000;
  background-color: #f7f7f7;
  padding: 0.4em;
}
div#pager #pager-button-area {
  position: absolute;
  top: 8px;
  right: 20px;
}
div#pager #pager-contents {
  position: relative;
  overflow: auto;
  width: 100%;
  height: 100%;
}
div#pager #pager-contents #pager-container {
  position: relative;
  padding: 15px 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
div#pager .ui-resizable-handle {
  top: 0px;
  height: 8px;
  background: #f7f7f7;
  border-top: 1px solid #cfcfcf;
  border-bottom: 1px solid #cfcfcf;
  /* This injects handle bars (a short, wide = symbol) for 
        the resize handle. */
}
div#pager .ui-resizable-handle::after {
  content: '';
  top: 2px;
  left: 50%;
  height: 3px;
  width: 30px;
  margin-left: -15px;
  position: absolute;
  border-top: 1px solid #cfcfcf;
}
.quickhelp {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  line-height: 1.8em;
}
.shortcut_key {
  display: inline-block;
  width: 21ex;
  text-align: right;
  font-family: monospace;
}
.shortcut_descr {
  display: inline-block;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
span.save_widget {
  height: 30px;
  margin-top: 4px;
  display: flex;
  justify-content: flex-start;
  align-items: baseline;
  width: 50%;
  flex: 1;
}
span.save_widget span.filename {
  height: 100%;
  line-height: 1em;
  margin-left: 16px;
  border: none;
  font-size: 146.5%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  border-radius: 2px;
}
span.save_widget span.filename:hover {
  background-color: #e6e6e6;
}
[dir="rtl"] span.save_widget.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] span.save_widget span.filename {
  margin-left: 0;
  margin-right: 16px;
}
span.checkpoint_status,
span.autosave_status {
  font-size: small;
  white-space: nowrap;
  padding: 0 5px;
}
@media (max-width: 767px) {
  span.save_widget {
    font-size: small;
    padding: 0 0 0 5px;
  }
  span.checkpoint_status,
  span.autosave_status {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  span.checkpoint_status {
    display: none;
  }
  span.autosave_status {
    font-size: x-small;
  }
}
.toolbar {
  padding: 0px;
  margin-left: -5px;
  margin-top: 2px;
  margin-bottom: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.toolbar select,
.toolbar label {
  width: auto;
  vertical-align: middle;
  margin-right: 2px;
  margin-bottom: 0px;
  display: inline;
  font-size: 92%;
  margin-left: 0.3em;
  margin-right: 0.3em;
  padding: 0px;
  padding-top: 3px;
}
.toolbar .btn {
  padding: 2px 8px;
}
.toolbar .btn-group {
  margin-top: 0px;
  margin-left: 5px;
}
.toolbar-btn-label {
  margin-left: 6px;
}
#maintoolbar {
  margin-bottom: -3px;
  margin-top: -8px;
  border: 0px;
  min-height: 27px;
  margin-left: 0px;
  padding-top: 11px;
  padding-bottom: 3px;
}
#maintoolbar .navbar-text {
  float: none;
  vertical-align: middle;
  text-align: right;
  margin-left: 5px;
  margin-right: 0px;
  margin-top: 0px;
}
.select-xs {
  height: 24px;
}
[dir="rtl"] .btn-group > .btn,
.btn-group-vertical > .btn {
  float: right;
}
.pulse,
.dropdown-menu > li > a.pulse,
li.pulse > a.dropdown-toggle,
li.pulse.open > a.dropdown-toggle {
  background-color: #F37626;
  color: white;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
/** WARNING IF YOU ARE EDITTING THIS FILE, if this is a .css file, It has a lot
 * of chance of beeing generated from the ../less/[samename].less file, you can
 * try to get back the less file by reverting somme commit in history
 **/
/*
 * We'll try to get something pretty, so we
 * have some strange css to have the scroll bar on
 * the left with fix button on the top right of the tooltip
 */
@-moz-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-webkit-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-moz-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@-webkit-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
/*properties of tooltip after "expand"*/
.bigtooltip {
  overflow: auto;
  height: 200px;
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
}
/*properties of tooltip before "expand"*/
.smalltooltip {
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
  text-overflow: ellipsis;
  overflow: hidden;
  height: 80px;
}
.tooltipbuttons {
  position: absolute;
  padding-right: 15px;
  top: 0px;
  right: 0px;
}
.tooltiptext {
  /*avoid the button to overlap on some docstring*/
  padding-right: 30px;
}
.ipython_tooltip {
  max-width: 700px;
  /*fade-in animation when inserted*/
  -webkit-animation: fadeOut 400ms;
  -moz-animation: fadeOut 400ms;
  animation: fadeOut 400ms;
  -webkit-animation: fadeIn 400ms;
  -moz-animation: fadeIn 400ms;
  animation: fadeIn 400ms;
  vertical-align: middle;
  background-color: #f7f7f7;
  overflow: visible;
  border: #ababab 1px solid;
  outline: none;
  padding: 3px;
  margin: 0px;
  padding-left: 7px;
  font-family: monospace;
  min-height: 50px;
  -moz-box-shadow: 0px 6px 10px -1px #adadad;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  border-radius: 2px;
  position: absolute;
  z-index: 1000;
}
.ipython_tooltip a {
  float: right;
}
.ipython_tooltip .tooltiptext pre {
  border: 0;
  border-radius: 0;
  font-size: 100%;
  background-color: #f7f7f7;
}
.pretooltiparrow {
  left: 0px;
  margin: 0px;
  top: -16px;
  width: 40px;
  height: 16px;
  overflow: hidden;
  position: absolute;
}
.pretooltiparrow:before {
  background-color: #f7f7f7;
  border: 1px #ababab solid;
  z-index: 11;
  content: "";
  position: absolute;
  left: 15px;
  top: 10px;
  width: 25px;
  height: 25px;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
}
ul.typeahead-list i {
  margin-left: -10px;
  width: 18px;
}
[dir="rtl"] ul.typeahead-list i {
  margin-left: 0;
  margin-right: -10px;
}
ul.typeahead-list {
  max-height: 80vh;
  overflow: auto;
}
ul.typeahead-list > li > a {
  /** Firefox bug **/
  /* see https://github.com/jupyter/notebook/issues/559 */
  white-space: normal;
}
ul.typeahead-list  > li > a.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .typeahead-list {
  text-align: right;
}
.cmd-palette .modal-body {
  padding: 7px;
}
.cmd-palette form {
  background: white;
}
.cmd-palette input {
  outline: none;
}
.no-shortcut {
  min-width: 20px;
  color: transparent;
}
[dir="rtl"] .no-shortcut.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .command-shortcut.pull-right {
  float: left !important;
  float: left;
}
.command-shortcut:before {
  content: "(command mode)";
  padding-right: 3px;
  color: #777777;
}
.edit-shortcut:before {
  content: "(edit)";
  padding-right: 3px;
  color: #777777;
}
[dir="rtl"] .edit-shortcut.pull-right {
  float: left !important;
  float: left;
}
#find-and-replace #replace-preview .match,
#find-and-replace #replace-preview .insert {
  background-color: #BBDEFB;
  border-color: #90CAF9;
  border-style: solid;
  border-width: 1px;
  border-radius: 0px;
}
[dir="ltr"] #find-and-replace .input-group-btn + .form-control {
  border-left: none;
}
[dir="rtl"] #find-and-replace .input-group-btn + .form-control {
  border-right: none;
}
#find-and-replace #replace-preview .replace .match {
  background-color: #FFCDD2;
  border-color: #EF9A9A;
  border-radius: 0px;
}
#find-and-replace #replace-preview .replace .insert {
  background-color: #C8E6C9;
  border-color: #A5D6A7;
  border-radius: 0px;
}
#find-and-replace #replace-preview {
  max-height: 60vh;
  overflow: auto;
}
#find-and-replace #replace-preview pre {
  padding: 5px 10px;
}
.terminal-app {
  background: #EEE;
}
.terminal-app #header {
  background: #fff;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.terminal-app .terminal {
  width: 100%;
  float: left;
  font-family: monospace;
  color: white;
  background: black;
  padding: 0.4em;
  border-radius: 2px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
}
.terminal-app .terminal,
.terminal-app .terminal dummy-screen {
  line-height: 1em;
  font-size: 14px;
}
.terminal-app .terminal .xterm-rows {
  padding: 10px;
}
.terminal-app .terminal-cursor {
  color: black;
  background: white;
}
.terminal-app #terminado-container {
  margin-top: 20px;
}
/*# sourceMappingURL=style.min.css.map */
    </style>
<style type="text/css">
    .highlight .hll { background-color: #ffffcc }
.highlight  { background: #f8f8f8; }
.highlight .c { color: #408080; font-style: italic } /* Comment */
.highlight .err { border: 1px solid #FF0000 } /* Error */
.highlight .k { color: #008000; font-weight: bold } /* Keyword */
.highlight .o { color: #666666 } /* Operator */
.highlight .ch { color: #408080; font-style: italic } /* Comment.Hashbang */
.highlight .cm { color: #408080; font-style: italic } /* Comment.Multiline */
.highlight .cp { color: #BC7A00 } /* Comment.Preproc */
.highlight .cpf { color: #408080; font-style: italic } /* Comment.PreprocFile */
.highlight .c1 { color: #408080; font-style: italic } /* Comment.Single */
.highlight .cs { color: #408080; font-style: italic } /* Comment.Special */
.highlight .gd { color: #A00000 } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #FF0000 } /* Generic.Error */
.highlight .gh { color: #000080; font-weight: bold } /* Generic.Heading */
.highlight .gi { color: #00A000 } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #000080; font-weight: bold } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #800080; font-weight: bold } /* Generic.Subheading */
.highlight .gt { color: #0044DD } /* Generic.Traceback */
.highlight .kc { color: #008000; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008000; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008000; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008000 } /* Keyword.Pseudo */
.highlight .kr { color: #008000; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #B00040 } /* Keyword.Type */
.highlight .m { color: #666666 } /* Literal.Number */
.highlight .s { color: #BA2121 } /* Literal.String */
.highlight .na { color: #7D9029 } /* Name.Attribute */
.highlight .nb { color: #008000 } /* Name.Builtin */
.highlight .nc { color: #0000FF; font-weight: bold } /* Name.Class */
.highlight .no { color: #880000 } /* Name.Constant */
.highlight .nd { color: #AA22FF } /* Name.Decorator */
.highlight .ni { color: #999999; font-weight: bold } /* Name.Entity */
.highlight .ne { color: #D2413A; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0000FF } /* Name.Function */
.highlight .nl { color: #A0A000 } /* Name.Label */
.highlight .nn { color: #0000FF; font-weight: bold } /* Name.Namespace */
.highlight .nt { color: #008000; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #19177C } /* Name.Variable */
.highlight .ow { color: #AA22FF; font-weight: bold } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #666666 } /* Literal.Number.Bin */
.highlight .mf { color: #666666 } /* Literal.Number.Float */
.highlight .mh { color: #666666 } /* Literal.Number.Hex */
.highlight .mi { color: #666666 } /* Literal.Number.Integer */
.highlight .mo { color: #666666 } /* Literal.Number.Oct */
.highlight .sa { color: #BA2121 } /* Literal.String.Affix */
.highlight .sb { color: #BA2121 } /* Literal.String.Backtick */
.highlight .sc { color: #BA2121 } /* Literal.String.Char */
.highlight .dl { color: #BA2121 } /* Literal.String.Delimiter */
.highlight .sd { color: #BA2121; font-style: italic } /* Literal.String.Doc */
.highlight .s2 { color: #BA2121 } /* Literal.String.Double */
.highlight .se { color: #BB6622; font-weight: bold } /* Literal.String.Escape */
.highlight .sh { color: #BA2121 } /* Literal.String.Heredoc */
.highlight .si { color: #BB6688; font-weight: bold } /* Literal.String.Interpol */
.highlight .sx { color: #008000 } /* Literal.String.Other */
.highlight .sr { color: #BB6688 } /* Literal.String.Regex */
.highlight .s1 { color: #BA2121 } /* Literal.String.Single */
.highlight .ss { color: #19177C } /* Literal.String.Symbol */
.highlight .bp { color: #008000 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0000FF } /* Name.Function.Magic */
.highlight .vc { color: #19177C } /* Name.Variable.Class */
.highlight .vg { color: #19177C } /* Name.Variable.Global */
.highlight .vi { color: #19177C } /* Name.Variable.Instance */
.highlight .vm { color: #19177C } /* Name.Variable.Magic */
.highlight .il { color: #666666 } /* Literal.Number.Integer.Long */
    </style>


<style type="text/css">
/* Overrides of notebook CSS for static HTML export */
.reveal {
  font-size: 160%;
}
.reveal pre {
  width: inherit;
  padding: 0.4em;
  margin: 0px;
  font-family: monospace, sans-serif;
  font-size: 80%;
  box-shadow: 0px 0px 0px rgba(0, 0, 0, 0);
}
.reveal pre code {
  padding: 0px;
}
.reveal section img {
  border: 0px solid black;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0);
}
.reveal i {
  font-style: normal;
  font-family: FontAwesome;
  font-size: 2em;
}
.reveal .slides {
  text-align: left;
}
.reveal.fade {
  opacity: 1;
}
.reveal .progress {
  position: static;
}
.reveal .controls .navigate-left,
.reveal .controls .navigate-left.enabled {
  border-right-color: #727272;
}
.reveal .controls .navigate-left.enabled:hover,
.reveal .controls .navigate-left.enabled.enabled:hover {
  border-right-color: #dfdfdf;
}
.reveal .controls .navigate-right,
.reveal .controls .navigate-right.enabled {
  border-left-color: #727272;
}
.reveal .controls .navigate-right.enabled:hover,
.reveal .controls .navigate-right.enabled.enabled:hover {
  border-left-color: #dfdfdf;
}
.reveal .controls .navigate-up,
.reveal .controls .navigate-up.enabled {
  border-bottom-color: #727272;
}
.reveal .controls .navigate-up.enabled:hover,
.reveal .controls .navigate-up.enabled.enabled:hover {
  border-bottom-color: #dfdfdf;
}
.reveal .controls .navigate-down,
.reveal .controls .navigate-down.enabled {
  border-top-color: #727272;
}
.reveal .controls .navigate-down.enabled:hover,
.reveal .controls .navigate-down.enabled.enabled:hover {
  border-top-color: #dfdfdf;
}
.reveal .progress span {
  background: #727272;
}
div.input_area {
  padding: 0.06em;
}
div.code_cell {
  background-color: transparent;
}
div.prompt {
  width: 11ex;
  padding: 0.4em;
  margin: 0px;
  font-family: monospace, sans-serif;
  font-size: 80%;
  text-align: right;
}
div.output_area pre {
  font-family: monospace, sans-serif;
  font-size: 80%;
}
div.output_prompt {
  /* 5px right shift to account for margin in parent container */
  margin: 5px 5px 0 0;
}
div.text_cell.rendered .rendered_html {
  /* The H1 height seems miscalculated, we are just hidding the scrollbar */
  overflow-y: hidden;
}
a.anchor-link {
  /* There is still an anchor, we are only hidding it */
  display: none;
}
.rendered_html p {
  text-align: inherit;
}
::-webkit-scrollbar
{
  width: 6px;
  height: 6px;
}
::-webkit-scrollbar *
{
  background:transparent;
}
::-webkit-scrollbar-thumb
{
  background: #727272 !important;
}
</style>

<!-- Custom stylesheet, it must be in the same directory as the html file -->
<link rel="stylesheet" href="custom.css">

</head>


<body>


<div class="reveal">
<div class="slides">
<section><section>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>This is a detailed EDA of the data, shown in the second video of "Exploratory data analysis" lecture (week 2).</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Load-data">Load data<a class="anchor-link" href="#Load-data">&#182;</a></h2>
</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>In this competition hosted by <em>solutions.se</em>, the task was to predict the advertisement cost for a particular ad.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[1]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">pandas</span> <span class="k">as</span> <span class="nn">pd</span>
<span class="kn">import</span> <span class="nn">numpy</span> <span class="k">as</span> <span class="nn">np</span>
<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="o">%</span><span class="k">matplotlib</span> inline

<span class="n">data_path</span> <span class="o">=</span> <span class="s1">&#39;./data&#39;</span>
<span class="n">train</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="s1">&#39;</span><span class="si">%s</span><span class="s1">/train.csv.gz&#39;</span> <span class="o">%</span> <span class="n">data_path</span><span class="p">,</span> <span class="n">parse_dates</span><span class="o">=</span><span class="p">[</span><span class="s1">&#39;Date&#39;</span><span class="p">])</span>
<span class="n">test</span>  <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="s1">&#39;</span><span class="si">%s</span><span class="s1">/test.csv.gz&#39;</span> <span class="o">%</span> <span class="n">data_path</span><span class="p">,</span>  <span class="n">parse_dates</span><span class="o">=</span><span class="p">[</span><span class="s1">&#39;Date&#39;</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Let's look at the data (notice that the table is transposed, so we can see all feature names).</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[2]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">train</span><span class="o">.</span><span class="n">head</span><span class="p">()</span><span class="o">.</span><span class="n">T</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[2]:</div>



<div class="output_html rendered_html output_subarea output_execute_result">
<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>0</th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>AdGroupId</th>
      <td>78db034136</td>
      <td>68a0110c69</td>
      <td>21af1035af</td>
      <td>f63fda0c33</td>
      <td>cd868ebdcc</td>
    </tr>
    <tr>
      <th>AdGroupName</th>
      <td>6d91d 25866 9c594</td>
      <td>2657d cb2d0 6d91d</td>
      <td>6d91d e33a0 9a99b</td>
      <td>59991 9c594</td>
      <td>6d91d 25866 9a99b</td>
    </tr>
    <tr>
      <th>AdNetworkType2</th>
      <td>s</td>
      <td>s</td>
      <td>s</td>
      <td>s</td>
      <td>s</td>
    </tr>
    <tr>
      <th>AveragePosition</th>
      <td>1.2</td>
      <td>2</td>
      <td>1</td>
      <td>1</td>
      <td>1.1</td>
    </tr>
    <tr>
      <th>CampaignId</th>
      <td>273823cb71</td>
      <td>273823cb71</td>
      <td>273823cb71</td>
      <td>273823cb71</td>
      <td>273823cb71</td>
    </tr>
    <tr>
      <th>CampaignName</th>
      <td>2657d 16cb2 74532 b4842 0136e 35aca f140d</td>
      <td>2657d 16cb2 74532 b4842 0136e 35aca f140d</td>
      <td>2657d 16cb2 74532 b4842 0136e 35aca f140d</td>
      <td>2657d 16cb2 74532 b4842 0136e 35aca f140d</td>
      <td>2657d 16cb2 74532 b4842 0136e 35aca f140d</td>
    </tr>
    <tr>
      <th>Clicks</th>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>3</td>
    </tr>
    <tr>
      <th>Conversions</th>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>ConversionsManyPerClick</th>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <th>Cost</th>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>0.94</td>
    </tr>
    <tr>
      <th>Date</th>
      <td>2014-01-01 00:00:00</td>
      <td>2014-01-01 00:00:00</td>
      <td>2014-01-01 00:00:00</td>
      <td>2014-01-01 00:00:00</td>
      <td>2014-01-01 00:00:00</td>
    </tr>
    <tr>
      <th>DestinationUrl</th>
      <td>98035d60fc</td>
      <td>c25f23cd08</td>
      <td>01f87f7639</td>
      <td>5c0e89f532</td>
      <td>8888b55dde</td>
    </tr>
    <tr>
      <th>Device</th>
      <td>t</td>
      <td>t</td>
      <td>t</td>
      <td>d</td>
      <td>d</td>
    </tr>
    <tr>
      <th>FirstPageCpc</th>
      <td>1.06</td>
      <td>2.94</td>
      <td>0.42</td>
      <td>1.75</td>
      <td>0.17</td>
    </tr>
    <tr>
      <th>Impressions</th>
      <td>32</td>
      <td>1</td>
      <td>4</td>
      <td>1</td>
      <td>22</td>
    </tr>
    <tr>
      <th>KeywordMatchType</th>
      <td>b</td>
      <td>b</td>
      <td>b</td>
      <td>b</td>
      <td>b</td>
    </tr>
    <tr>
      <th>KeywordText</th>
      <td>jze 10 +uxsgk</td>
      <td>+jze +dznvgyhjclr</td>
      <td>jze 100 +gzpxyk</td>
      <td>jze 10 +uxsgk 1950k</td>
      <td>jze 10 mykj +gzpxyk</td>
    </tr>
    <tr>
      <th>MaxCpc</th>
      <td>0.28</td>
      <td>1</td>
      <td>0.22</td>
      <td>0.54</td>
      <td>0.12</td>
    </tr>
    <tr>
      <th>QualityScore</th>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>Slot</th>
      <td>s_2</td>
      <td>s_2</td>
      <td>s_1</td>
      <td>s_2</td>
      <td>s_1</td>
    </tr>
    <tr>
      <th>TopOfPageCpc</th>
      <td>1.07</td>
      <td>5.02</td>
      <td>0.42</td>
      <td>4</td>
      <td>0.25</td>
    </tr>
    <tr>
      <th>KeywordId</th>
      <td>7d20d63df9</td>
      <td>a617d4f037</td>
      <td>6e0b7024d2</td>
      <td>9c2ea0cdf8</td>
      <td>4c8ba7affd</td>
    </tr>
  </tbody>
</table>
</div>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>We see a lot of features with not obvious names. If you search for the <em>CampaignId</em>, <em>AdGroupName</em>, <em>AdNetworkType2</em> using any web search engine, you will find this dataset was exported from Google AdWords. So what is the required domain knowledge here? The knowledge of how web advertisement and Google AdWords work! After you have learned it, the features will make sense to you and you can proceed.</p>
<p>For the sake of the story I will briefly describe Google AdWords system now. Basically every time a user queries a search engine, Google AdWords decides what ad will be shown along with the actual search results. On the other side of AdWords, the advertisers manage the ads -- they can set a multiple keywords, that a user should query in order to their ad to be shown. If the keywords are set properly and are relevant to the ad, then the ad will be shown to relevant users and the ad will get clicked. Advertisers pay to Google for some type of events, happened with their ad: for example for a click event, i.e. the user saw this ad and clicked it. AdWords uses complex algorithms to decide which ad to show to a particular user with a particular search query. The advertisers can only indirectly influence AdWords decesion process by changing keywords and several other parameters. So at a high level, the task is to predict what will be the costs for the advertiser (how much he will pay to Google, column <em>Cost</em>) when the parameters (e.g. keywords) are changed.</p>
<p>The ads are grouped in groups, there are features <em>AdGroupId</em> <em>AdGroupName</em> describing them. A campaign corresponds to some specific parameters that an advertiser sets. Similarly, there are ID and name features <em>CampaignId</em>, <em>CampaignName</em>. And finally there is some information about keywords: <em>KeywordId</em> and <em>KeywordText</em>. Slot is $1$ when ad is shown on top of the page, and $2$ when on the side. Device is a categorical variable and can be either "tablet", "mobile" or "pc". And finally the <em>Date</em> is just the date, for which clicks were aggregated.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[3]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">test</span><span class="o">.</span><span class="n">head</span><span class="p">()</span><span class="o">.</span><span class="n">T</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[3]:</div>



<div class="output_html rendered_html output_subarea output_execute_result">
<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>0</th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Id</th>
      <td>0</td>
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
    </tr>
    <tr>
      <th>AdGroupId</th>
      <td>00096e7611</td>
      <td>00096e7611</td>
      <td>00096e7611</td>
      <td>00096e7611</td>
      <td>00096e7611</td>
    </tr>
    <tr>
      <th>AdGroupName</th>
      <td>c8037 75b01 9a99b 3b678 52ba4 2657d</td>
      <td>c8037 75b01 9a99b 3b678 52ba4 2657d</td>
      <td>c8037 75b01 9a99b 3b678 52ba4 2657d</td>
      <td>c8037 75b01 9a99b 3b678 52ba4 2657d</td>
      <td>c8037 75b01 9a99b 3b678 52ba4 2657d</td>
    </tr>
    <tr>
      <th>AdNetworkType2</th>
      <td>s</td>
      <td>s</td>
      <td>s</td>
      <td>s</td>
      <td>s</td>
    </tr>
    <tr>
      <th>AveragePosition</th>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
      <td>1</td>
    </tr>
    <tr>
      <th>CampaignId</th>
      <td>e62b4bc4c3</td>
      <td>e62b4bc4c3</td>
      <td>e62b4bc4c3</td>
      <td>e62b4bc4c3</td>
      <td>e62b4bc4c3</td>
    </tr>
    <tr>
      <th>CampaignName</th>
      <td>2657d 16cb2 74532 06feb 0136e 3a15d</td>
      <td>2657d 16cb2 74532 06feb 0136e 3a15d</td>
      <td>2657d 16cb2 74532 06feb 0136e 3a15d</td>
      <td>2657d 16cb2 74532 06feb 0136e 3a15d</td>
      <td>2657d 16cb2 74532 06feb 0136e 3a15d</td>
    </tr>
    <tr>
      <th>Date</th>
      <td>2014-06-01 00:00:00</td>
      <td>2014-06-01 00:00:00</td>
      <td>2014-06-01 00:00:00</td>
      <td>2014-06-01 00:00:00</td>
      <td>2014-06-01 00:00:00</td>
    </tr>
    <tr>
      <th>DestinationUrl</th>
      <td>f5aad09031</td>
      <td>f5aad09031</td>
      <td>f5aad09031</td>
      <td>f5aad09031</td>
      <td>f5aad09031</td>
    </tr>
    <tr>
      <th>Device</th>
      <td>t</td>
      <td>d</td>
      <td>m</td>
      <td>t</td>
      <td>d</td>
    </tr>
    <tr>
      <th>KeywordId</th>
      <td>539778bb80</td>
      <td>539778bb80</td>
      <td>539778bb80</td>
      <td>539778bb80</td>
      <td>539778bb80</td>
    </tr>
    <tr>
      <th>KeywordMatchType</th>
      <td>e</td>
      <td>e</td>
      <td>e</td>
      <td>e</td>
      <td>e</td>
    </tr>
    <tr>
      <th>KeywordText</th>
      <td>tcjnw gzpxyk nyss ewzhy</td>
      <td>tcjnw gzpxyk nyss ewzhy</td>
      <td>tcjnw gzpxyk nyss ewzhy</td>
      <td>tcjnw gzpxyk nyss ewzhy</td>
      <td>tcjnw gzpxyk nyss ewzhy</td>
    </tr>
    <tr>
      <th>Slot</th>
      <td>s_1</td>
      <td>s_1</td>
      <td>s_1</td>
      <td>s_2</td>
      <td>s_2</td>
    </tr>
  </tbody>
</table>
</div>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Notice there is diffrent number of columns in test and train -- our target is <em>Cost</em> column, but it is closly related to several other features, e.g. <em>Clicks</em>, <em>Conversions</em>. All of the related columns were deleted from the test set to avoid data leakages.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h1 id="Let's-analyze">Let's analyze<a class="anchor-link" href="#Let's-analyze">&#182;</a></h1>
</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Are we ready to modeling? Not yet. Take a look at this statistic:</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[4]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="nb">print</span> <span class="s1">&#39;Train min/max date: </span><span class="si">%s</span><span class="s1"> / </span><span class="si">%s</span><span class="s1">&#39;</span> <span class="o">%</span> <span class="p">(</span><span class="n">train</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">min</span><span class="p">()</span><span class="o">.</span><span class="n">date</span><span class="p">(),</span> <span class="n">train</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">max</span><span class="p">()</span><span class="o">.</span><span class="n">date</span><span class="p">())</span>
<span class="nb">print</span> <span class="s1">&#39;Test  min/max date: </span><span class="si">%s</span><span class="s1"> / </span><span class="si">%s</span><span class="s1">&#39;</span> <span class="o">%</span> <span class="p">(</span> <span class="n">test</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">min</span><span class="p">()</span><span class="o">.</span><span class="n">date</span><span class="p">(),</span>  <span class="n">test</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">max</span><span class="p">()</span><span class="o">.</span><span class="n">date</span><span class="p">())</span>
<span class="nb">print</span> <span class="s1">&#39;&#39;</span>
<span class="nb">print</span> <span class="s1">&#39;Number of days in train: </span><span class="si">%d</span><span class="s1">&#39;</span> <span class="o">%</span> <span class="p">((</span><span class="n">train</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">max</span><span class="p">()</span> <span class="o">-</span> <span class="n">train</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">min</span><span class="p">())</span><span class="o">.</span><span class="n">days</span> <span class="o">+</span> <span class="mi">1</span><span class="p">)</span>
<span class="nb">print</span> <span class="s1">&#39;Number of days in test:  </span><span class="si">%d</span><span class="s1">&#39;</span> <span class="o">%</span> <span class="p">((</span> <span class="n">test</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">max</span><span class="p">()</span> <span class="o">-</span>  <span class="n">test</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">min</span><span class="p">())</span><span class="o">.</span><span class="n">days</span> <span class="o">+</span> <span class="mi">1</span><span class="p">)</span>
<span class="nb">print</span> <span class="s1">&#39;&#39;</span>
<span class="nb">print</span> <span class="s1">&#39;Train shape: </span><span class="si">%d</span><span class="s1"> rows&#39;</span> <span class="o">%</span> <span class="n">train</span><span class="o">.</span><span class="n">shape</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span>
<span class="nb">print</span> <span class="s1">&#39;Test shape: </span><span class="si">%d</span><span class="s1"> rows&#39;</span>  <span class="o">%</span> <span class="n">test</span><span class="o">.</span><span class="n">shape</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Train min/max date: 2014-01-01 / 2014-05-31
Test  min/max date: 2014-06-01 / 2014-06-14

Number of days in train: 151
Number of days in test:  14

Train shape: 3493820 rows
Test shape: 8951040 rows
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Train period is more than 10 times larger than the test period, but train set has fewer rows, how could that happen?</p>
<p>At this point I suggest you to stop and think yourself, what could be a reason, why this did happen. Unfortunately we cannot share the data for this competition, but the information from above should be enough to get a right idea.</p>
<p>Alternatively, you can go along for the explanation, if you want.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h1 id="Investigation">Investigation<a class="anchor-link" href="#Investigation">&#182;</a></h1>
</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Let's take a look how many rows with each date we have in train and test.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[5]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">test</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">value_counts</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[5]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>2014-06-02    639360
2014-06-12    639360
2014-06-09    639360
2014-06-14    639360
2014-06-01    639360
2014-06-11    639360
2014-06-08    639360
2014-06-05    639360
2014-06-10    639360
2014-06-07    639360
2014-06-04    639360
2014-06-06    639360
2014-06-03    639360
2014-06-13    639360
Name: Date, dtype: int64</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[6]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># print only first 10</span>
<span class="n">train</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">value_counts</span><span class="p">()</span><span class="o">.</span><span class="n">head</span><span class="p">(</span><span class="mi">10</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[6]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>2014-01-01    36869
2014-01-04    36427
2014-01-05    36137
2014-01-02    34755
2014-01-03    34693
2014-01-06    31349
2014-04-07    30950
2014-02-09    30101
2014-01-26    29830
2014-02-08    29187
Name: Date, dtype: int64</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Interesting, for the test set we have the same number of rows for every date, while in train set the number of rows is different for each day. It looks like that for each day in the test set a loop through some kind of IDs had been run. But what about train set? So far we don't know, but let's find the test IDs first.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Test">Test<a class="anchor-link" href="#Test">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>So now we know, that there is $639360$ different IDs. It should be easy to find the columns, that form ID, because if the ID is ['col1', 'col2'], then to compute the number of combinations  we should just multiply the number of unique elements in each.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[7]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">test_nunique</span> <span class="o">=</span> <span class="n">test</span><span class="o">.</span><span class="n">nunique</span><span class="p">()</span>
<span class="n">test_nunique</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[7]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>Id                  8951040
AdGroupId             13548
AdGroupName            2281
AdNetworkType2            2
AveragePosition         131
CampaignId              252
CampaignName            252
Date                     14
DestinationUrl        52675
Device                    3
KeywordId             12285
KeywordMatchType          3
KeywordText           11349
Slot                      4
dtype: int64</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[8]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">itertools</span>

<span class="c1"># This function looks for a combination of elements </span>
<span class="c1"># with product of 639360 </span>
<span class="k">def</span> <span class="nf">find_prod</span><span class="p">(</span><span class="n">data</span><span class="p">):</span>
    <span class="c1"># combinations of not more than 5 features</span>
    <span class="k">for</span> <span class="n">n</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">5</span><span class="p">):</span>
        <span class="c1"># iterate through all combinations</span>
        <span class="k">for</span> <span class="n">c</span> <span class="ow">in</span> <span class="n">itertools</span><span class="o">.</span><span class="n">combinations</span><span class="p">(</span><span class="nb">range</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="n">data</span><span class="p">)),</span> <span class="n">n</span><span class="p">):</span>
            <span class="k">if</span> <span class="n">data</span><span class="p">[</span><span class="nb">list</span><span class="p">(</span><span class="n">c</span><span class="p">)]</span><span class="o">.</span><span class="n">prod</span><span class="p">()</span> <span class="o">==</span> <span class="mi">639360</span><span class="p">:</span>
                <span class="nb">print</span> <span class="n">test_nunique</span><span class="o">.</span><span class="n">index</span><span class="p">[</span><span class="n">c</span><span class="p">]</span>
                <span class="k">return</span>
    <span class="nb">print</span> <span class="s1">&#39;Nothing found&#39;</span>

    
<span class="n">find_prod</span><span class="p">(</span><span class="n">test_nunique</span><span class="o">.</span><span class="n">values</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Nothing found
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Hmm, nothing found! The problem is that some features are tied, and the number of their combinations does not equal to product of individual unique number of elements. For example it does not make sense to create all possible combinations of <em>DestinationUrl</em> and <em>AdGroupId</em> as <em>DestinationUrl</em> belong to exactly one <em>AdGroupId</em>.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[9]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">test</span><span class="o">.</span><span class="n">groupby</span><span class="p">(</span><span class="s1">&#39;DestinationUrl&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">AdGroupId</span><span class="o">.</span><span class="n">nunique</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[9]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>DestinationUrl
00010d62df    1
000249f717    1
00054cf3f8    1
000684bf0b    1
00072a9fa7    1
00077a6729    1
0007cc191f    1
0009388900    1
001144cae4    1
00115f6477    1
00141a299f    1
00169dc49b    1
0018b27e06    1
001b0b3d06    1
001ef8368e    1
00205e056a    1
002082ab8b    1
0020c585ea    1
0021419f7e    1
00225519cc    1
002498dc88    1
0026171436    1
00265dc4bb    1
0026833e5c    1
0027ffbad9    1
002b1deb25    1
002c55ccef    1
002e44290f    1
0030ca870e    1
0032b64beb    1
             ..
ffda377018    1
ffda3c412a    1
ffda5b53d6    1
ffda8c0d8c    1
ffdbf5d179    1
ffdc872fcf    1
ffde114af5    1
ffde41a800    1
ffe2fb7007    1
ffe4a040d4    1
ffe685e937    1
ffe8c3da53    1
ffe8f82e08    1
ffeb9fda9d    1
ffebd1d253    1
ffebea724f    1
ffecf398b1    1
ffecf3e7d4    1
ffed185438    1
fff02d7269    1
fff10adcb0    1
fff12e5f19    1
fff132d5bd    1
fff19836a0    1
fff3539204    1
fff4c5d255    1
fff55db78a    1
fff8c11ad9    1
fff90ea351    1
fffb248bf0    1
Name: AdGroupId, Length: 52675, dtype: int64</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>So, now let's try to find ID differently. Let's try to find a list of columns, such that threre is exazctly $639360$ unique combinations of their values <strong>in the test set</strong> (not overall). So, we want to find <code>columns</code>, such that:</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[&nbsp;]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">test</span><span class="p">[</span><span class="n">columns</span><span class="p">]</span><span class="o">.</span><span class="n">drop_duplicates</span><span class="p">()</span><span class="o">.</span><span class="n">shape</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span>  <span class="o">==</span> <span class="mi">639360</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>We could do it with a similar loop.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[&nbsp;]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">itertools</span>

<span class="k">def</span> <span class="nf">find_ncombinations</span><span class="p">(</span><span class="n">data</span><span class="p">):</span>
    <span class="c1"># combinations of not more than 5 features</span>
    <span class="k">for</span> <span class="n">n</span> <span class="ow">in</span> <span class="nb">range</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">5</span><span class="p">):</span>
        <span class="k">for</span> <span class="n">c</span> <span class="ow">in</span> <span class="n">itertools</span><span class="o">.</span><span class="n">combinations</span><span class="p">(</span><span class="nb">range</span><span class="p">(</span><span class="n">data</span><span class="o">.</span><span class="n">shape</span><span class="p">[</span><span class="mi">1</span><span class="p">]),</span> <span class="n">n</span><span class="p">):</span>
            <span class="nb">print</span> <span class="n">c</span>
            <span class="n">columns</span> <span class="o">=</span> <span class="n">test</span><span class="o">.</span><span class="n">columns</span><span class="p">[</span><span class="nb">list</span><span class="p">(</span><span class="n">c</span><span class="p">)]</span>
            <span class="k">if</span> <span class="n">test</span><span class="p">[</span><span class="n">columns</span><span class="p">]</span><span class="o">.</span><span class="n">drop_duplicates</span><span class="p">()</span><span class="o">.</span><span class="n">shape</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">639360</span><span class="p">:</span>
                <span class="nb">print</span> <span class="n">columns</span>
                <span class="k">return</span>
    <span class="nb">print</span> <span class="s1">&#39;Nothing found&#39;</span>

    
<span class="n">find_ncombinations</span><span class="p">(</span><span class="n">test</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>But it will take forever to compute. So it is easier to find the combination manually.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>So after some time of trials and errors I figured out, that the four features <em>KeywordId, AdGroupId, Device, Slot</em> form the index. The number of unique rows is exactly <em>639360</em> as we wanted to find.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[10]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">columns</span> <span class="o">=</span> <span class="p">[</span><span class="s1">&#39;KeywordId&#39;</span><span class="p">,</span> <span class="s1">&#39;AdGroupId&#39;</span><span class="p">,</span> <span class="s1">&#39;Device&#39;</span><span class="p">,</span> <span class="s1">&#39;Slot&#39;</span><span class="p">]</span>
<span class="n">test</span><span class="p">[</span><span class="n">columns</span><span class="p">]</span><span class="o">.</span><span class="n">drop_duplicates</span><span class="p">()</span><span class="o">.</span><span class="n">shape</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[10]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>(639360, 4)</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Looks reasonable. For each <em>AdGroupId</em> there is a <strong>distinct set</strong> of possible <em>KeywordId's</em>, but <em>Device</em> and <em>Slot</em> variants are the same for each ad. And the target is to predict what will be the daily cost for using different <em>KeywordId's</em>, <em>Device</em> type, <em>Slot</em> type to advertise ads from <em>AdGroups</em>.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Train">Train<a class="anchor-link" href="#Train">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>To this end, we found how test set was constructed, but what about the train set? Let us plot something, probably we will find it out.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[11]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">seaborn</span> <span class="k">as</span> <span class="nn">sns</span>
<span class="n">sns</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="n">palette</span><span class="o">=</span><span class="s1">&#39;pastel&#39;</span><span class="p">)</span>
<span class="n">sns</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="n">font_scale</span><span class="o">=</span><span class="mi">2</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[12]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># from absolute dates to relative</span>
<span class="n">train</span><span class="p">[</span><span class="s1">&#39;date_diff&#39;</span><span class="p">]</span> <span class="o">=</span>  <span class="p">(</span><span class="n">train</span><span class="o">.</span><span class="n">Date</span> <span class="o">-</span> <span class="n">train</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">min</span><span class="p">())</span><span class="o">.</span><span class="n">dt</span><span class="o">.</span><span class="n">days</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[13]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># group by the index, that we&#39;ve found</span>
<span class="n">g</span><span class="o">=</span> <span class="n">train</span><span class="o">.</span><span class="n">groupby</span><span class="p">([</span><span class="s1">&#39;KeywordId&#39;</span><span class="p">,</span> <span class="s1">&#39;AdGroupId&#39;</span><span class="p">,</span> <span class="s1">&#39;Device&#39;</span><span class="p">,</span> <span class="s1">&#39;Slot&#39;</span><span class="p">])</span>

<span class="c1"># and for each index show average relative date versus </span>
<span class="c1"># the number of rows with that index</span>
<span class="n">plt</span><span class="o">.</span><span class="n">figure</span><span class="p">(</span><span class="n">figsize</span><span class="o">=</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="mi">12</span><span class="p">))</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">g</span><span class="o">.</span><span class="n">date_diff</span><span class="o">.</span><span class="n">mean</span><span class="p">(),</span><span class="n">g</span><span class="o">.</span><span class="n">size</span><span class="p">(),</span><span class="n">edgecolor</span> <span class="o">=</span> <span class="s1">&#39;none&#39;</span><span class="p">,</span><span class="n">alpha</span> <span class="o">=</span> <span class="mf">0.2</span><span class="p">,</span> <span class="n">s</span><span class="o">=</span><span class="mi">20</span><span class="p">,</span> <span class="n">c</span><span class="o">=</span><span class="s1">&#39;b&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s1">&#39;Group mean relative date&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s1">&#39;Group size&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s1">&#39;Train&#39;</span><span class="p">);</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAvEAAALlCAYAAABNf7lsAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
AAALEgAACxIB0t1+/AAAIABJREFUeJzs3XmMZFd9L/DvOffWXtXV+96zL57FO45J/MA4+AFGwRKr
gIjkBRIF8sQ/SFEcBRJZkaMY5YlFyiKeElAwJPAMhCiJMM9yHo4x9tger8ze09t0V6/V1dW1173n
vD9+fat6NnvGM/Z0tb8fqdVddW/de+vOaOZXp7/nd5S11oKIiIiIiFqGvtYXQEREREREl4dFPBER
ERFRi2ERT0RERETUYljEExERERG1GBbxREREREQthkU8EREREVGLYRFPREQbykMPPYS9e/fi93//
96/1pRARbVjutb4AIiJ68+zdu/d1ve5XfuVX8O1vf/sqXw0REb1eLOKJiN5Curu7L/j8ysoK6vU6
IpEIUqnUedvT6fQbfWkNbW1t2L59O/r7+9+0cxIRtRrFFVuJiOhTn/oUDh06hA9+8IP4y7/8y2t9
OURE9BqYiSciIiIiajEs4omI6JKdOHECe/fuxc033wwAeOaZZ/C5z30Od9xxB/bt24evfOUrjX1f
euklPPjgg/j4xz+OO++8EwcPHsTtt9+O3/7t38a//Mu/4GK/CH61ia2333479u7di5dffhlLS0v4
8z//c9x11104ePAg7rzzTtx///3IZrNvzJsnItpAmIknIqLX5Qc/+AG++MUvwhiDtrY2aH32uNBv
/uZvolarAQDi8Tii0ShyuRyeeuopPPXUU3jsscfwta99DUqpyz731NQU/uAP/gDz8/OIx+MAgNnZ
WXz3u9/FL37xC/zgBz9AIpG48jdJRLRBcSSeiIguW7Vaxf3334/f+I3fwM9+9jM888wzeOGFF/Cx
j32ssc9dd92Fr371q3jyySfx/PPP49lnn8Xhw4fxwAMPoL29HY888gj+6Z/+6XWd/8/+7M/Q39+P
hx9+GM8//zyef/55fPWrX0U8HsfY2Bi++c1vXq23SkS0IbGIJyKiy+b7Pm677TZ8+ctfbnSRCYVC
GBoaauzz9a9/Hffccw+6uroazyUSCXzkIx/Bl7/8ZQB43UV8MpnEN7/5TVx//fWNc99zzz34zGc+
AwB45JFHXtdxiYhaBYt4IiJ6XT796U+/rigMANxxxx0Ih8M4efIkVldXL/v1n/zkJ5FMJs97/u67
7wYAjI6Owhjzuq6NiKgVMBNPRESvy0033fSq2621+Ld/+zf8+7//O44cOYLl5eVGRn69+fn5C/am
fzXBCPy5ent7AchvCorF4mUfl4ioVbCIJyKiyxaJRF514mitVsPnPvc5PPHEE2e9pqOjA47jAACW
lpZgrUW5XL7s81/s3JFIpPFzvV6/7OMSEbUKFvFERHTZgkL8Yv7xH/8RTzzxBBKJBP7wD/8Qv/7r
v46+vr6z9rntttuQz+cv2mqSiIgujkU8ERFddT/5yU8AAF/4whfwiU984rztlUoFhULhzb4sIqJN
gxNbiYjoqpudnQUA7Nu374Lbn376aU48JSK6AiziiYjoqgsmlJ44ceK8bbVaDV//+tff7EsiItpU
WMQTEdFVd8cddwAAvvrVr+Lxxx9vjLofP34cv/u7v4vTp08jHA5fy0skImppzMQTEdFV99nPfhaP
PvooMpkMfu/3fg+hUAjhcBjFYhGhUAhf/vKXcf/991+w5SQREb02jsQTEdFV193dje9///v46Ec/
ip6eHgBAPB7He9/7Xnz3u9/F+9///mt8hURErU1Z9vYiIiIiImopHIknIiIiImoxLOKJiIiIiFoM
i3giIiIiohbDIp6IiIiIqMWwxeRlWlhYvWbn7uiIY3m5dM3OvxnwHl453sMrx3t4dfA+XjnewyvH
e3jleA8vrqcnddFtHIlvIa7rXOtLaHm8h1eO9/DK8R5eHbyPV4738MrxHl453sPXh0U8EREREVGL
YRFPRERERNRiWMQTEREREbUYFvFERERERC2GRTwRERERUYthEU9ERERE1GJYxBMRERERtRgW8URE
RERELYZFPBERERFRi2ERT0RERETUYljEExERERG1GBbxREREREQthkU8EREREVGLYRFPRERERNRi
WMQTEREREbUYFvFERERERC2GRTwRERERUYthEU9ERERE1GJYxBMRERERtRgW8URERERELYZFPBER
ERFRi2ERT0RERETUYljEExERERG1GBbxREREREQthkU8EREREVGLYRFPRERvqN5e+SIioqvHvdYX
QEREm5cU79G1nw2AGubnr+UVERFtDhyJJyKiN1B03c/8L4eI6Grhv6hERPQm4n87RERXA/81JSKi
N0QuBwD1c5411+BKiIg2HxbxRER01X3jG8DevVEAoXO2RHHDDRFUq9fiqoiINg8W8UREdNX91V9F
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
v6eHkeBolE56Z6d2HHC2PRzWzjGpT29ZbPeFCxZ8vmYxo7U1gZ4ent842+WyxNYWJ2eBAM9vqqcW
i2T2fT6NH/yAWv/lMsdHPi/dhGDDti8vSyfPQcLna0btUylGkisVTi7SaY7FaJRt8XiYoNzZyRWX
ri5e27VrvHcG6ZmflxgZ4SqKYeU5KeBEKZvls1Stso2xmMbWFr3xQoH5AexTjpOtLU6M8nlONjc3
BYaGdsbrzp+34PXSwd7eFnj2Wen2aTrN/jl8mPkFKyvk/4360s1YKiXc1TCl+L9iN9/v88HNPWlb
29r2xm1fJ/5v//ZvX/d129rWtrbtNlMO/maiapald+zzw4651/F3/r2zfL0QzeO3/v5h59y9/V7b
miTN1vbsdTyz3V6qGzcek+3dHeXcvW/r673atdfvH7Zt64+5rr1sr2Ps1Retn+3Vjr1etx5rv3Pu
3na/a9rrPPtdz37X29qWm+mP3X3xeuNjr2vcrw2v935r/xrddXNuu0Vpcq/x90bG1Zux17s3bWtb
294au+ViT21rW9t+8ozICRAMKuTz0pGTZKROSlZo3dggYz04yOiq1uSKpSQzfu+9Ci+/rLCyYsHj
ofNK5ROFcLjhqNMQk+nrY3Q3kdBuJHJkhPKTW1vUEh8ZIZrR0UGe3u9nVDIcJkqRTjOieeCAgtZU
6DAVRKNRIizZLKPL1WqzGFNnp3KW/VlF1uOhFn2lwihoJEKt7rU1iZERhUJBYHub+4RCxFtGRhRS
KWItlBgkr1wqaWxvC0hJ5n15mbzz+jrRiVpNYWKCUevtbQGttaOFzqqlZMEZLS2XGS0dGiK33tmp
EIsJR7JSuNfT20uchviLdrAhcurEKAw/LuH3C0cS00xGFDwerjqEQtrR8FfwehmJTiQYOS4WGQEe
GVFYXhZYWrKQSMDl77UmEhIOa4eblxgaohY+lXrI9EejZMMbDaCri3hWowEcO2ZjcVEim+VYNDrl
/f0aHo+NRkOgXmeV1nJZOPkWxFWUArxerqLkchr33KOxsEBMJRAgbmPbzBHweNi3WttIpSRCIeY4
RKMaa2tEw2IxgVyOKjTRKGVNV1aE2xeBAPMzhoaI5khJnf3FRarc2DZw+LByaySsrxN9Gh3lSlC5
TH5dKYGtLfa5eS4si2hZKMSVhoEBrlj19QlcusSxH4tpjI9rVyLV52MfT0428MILHng8fGbGx228
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
ygAAAABJRU5ErkJggg==
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Looks interesting, isn't it? That is something we need to explain! How the same plot looks for the test set?</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[14]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># from absolute dates to relative</span>
<span class="n">test</span><span class="p">[</span><span class="s1">&#39;date_diff&#39;</span><span class="p">]</span> <span class="o">=</span>  <span class="p">(</span><span class="n">test</span><span class="o">.</span><span class="n">Date</span> <span class="o">-</span> <span class="n">test</span><span class="o">.</span><span class="n">Date</span><span class="o">.</span><span class="n">min</span><span class="p">())</span><span class="o">.</span><span class="n">dt</span><span class="o">.</span><span class="n">days</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[15]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># group by the index, that we&#39;ve found</span>
<span class="n">g</span><span class="o">=</span> <span class="n">test</span><span class="o">.</span><span class="n">groupby</span><span class="p">([</span><span class="s1">&#39;KeywordId&#39;</span><span class="p">,</span> <span class="s1">&#39;AdGroupId&#39;</span><span class="p">,</span> <span class="s1">&#39;Device&#39;</span><span class="p">,</span> <span class="s1">&#39;Slot&#39;</span><span class="p">])</span>

<span class="c1"># and for each index show average relative date versus </span>
<span class="c1"># the number of rows with that index</span>
<span class="n">plt</span><span class="o">.</span><span class="n">figure</span><span class="p">(</span><span class="n">figsize</span><span class="o">=</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="mi">12</span><span class="p">))</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">g</span><span class="o">.</span><span class="n">date_diff</span><span class="o">.</span><span class="n">mean</span><span class="p">(),</span><span class="n">g</span><span class="o">.</span><span class="n">size</span><span class="p">(),</span><span class="n">edgecolor</span> <span class="o">=</span> <span class="s1">&#39;none&#39;</span><span class="p">,</span><span class="n">alpha</span> <span class="o">=</span> <span class="mf">0.2</span><span class="p">,</span> <span class="n">s</span><span class="o">=</span><span class="mi">20</span><span class="p">,</span> <span class="n">c</span><span class="o">=</span><span class="s1">&#39;b&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s1">&#39;Group mean relative date&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s1">&#39;Group size&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylim</span><span class="p">(</span><span class="o">-</span><span class="mi">2</span><span class="p">,</span> <span class="mi">30</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s1">&#39;Test&#39;</span><span class="p">);</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAuQAAALlCAYAAACM+PPAAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
AAALEgAACxIB0t1+/AAAIABJREFUeJzs3X2c1nWd7/H3wARCAg4witwIhqJoVqiAnkJNaVVcddV1
01ZQq7OnUyrd7FacOo9stShLzZtWc4+Id6tpHmTP0VDBXNG8AUEUBU1FHawUBXVGFATm/OFxdlnu
Bhiu7zDzfD4ePmR+v991XZ/r6yN7zc/f9buqGhsbGwMAABTRofQAAADQnglyAAAoSJADAEBBghwA
AAoS5AAAUJAgBwCAggQ5AAAUVF16AABazl577bVFjxsxYkSuv/76Fp5m02666aa8/vrrGTNmTAYP
Hlzx1wdoDQQ5QBvSu3fv9W5/66238v7776dz587p1q3bOvt79OixrUdbr5tvvjkLFy7M0KFDBTnQ
bglygDbkwQcfXO/2sWPH5tFHH82YMWPyk5/8pMJTAbAxriEHAICCnCEHYL2mTZuW2267LfPnz099
fX169OiRYcOGZdy4cRkxYsR6HzNv3rxce+21mTNnTl5//fV06tQpPXv2zODBg3PIIYfk5JNPTqdO
nTJ58uRMnDix6XFf+9rX1nqevffeO1OnTt2m7w+gtRDkAKzlvffeyze/+c3MmDGjaduOO+6Y119/
Pffcc0/uueeefOMb38hXvvKVtR5355135lvf+lbWrFmTJNlhhx2SJHV1damrq8t9992Xv/iLv0ht
bW26du2a3r17580338yqVavSvXv3dOrUqem5ampqKvBOAVoHQQ7AWn74wx9mxowZ2XPPPfPNb34z
Bx98cLp06ZL6+vr85je/yS9+8YtcfPHFGTp0aA499NAkyapVq3LeeedlzZo1GTNmTL75zW9mwIAB
SZK33347Tz31VKZOnZrq6g/+b+dv/uZv8jd/8zc5/vjjs3DhwkycODGjR48u9p4BShLkADSZP39+
/vf//t/Zddddc91116Vnz55N+7p165YzzzwzO+ywQ84999xceeWVTUFeV1eXpUuXpmPHjvnRj36U
rl27Nj2ue/fuOfjgg3PwwQdX/P0AbA98qBOAJlOmTEmS/NVf/dVaMf4fHXvssamqqsq8efPyzjvv
JPngkpYkWb16dd54443KDAvQRjhDDkCTuXPnJkluuOGG3HrrrRs9dvXq1Xnttdey++67p7a2Nvvs
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
xy1evDi1tbVbOOqWq66uzsknn5wkmT17dsVfHwAAtkSzz5B//vOfz6OPPpoTTjghu+22WxYuXJhe
vXrls5/9bNMxDQ0NWbBgwWbf9rCl1NTUJEmWL29/Z70BANg+NfsM+THHHJOvfe1rWb16dRYsWJC+
ffvmF7/4RTp37tx0zG9/+9u8//7765w1r5R58+YlSdO15QAA0Npt1jd1nn322flv/+2/paGhIT17
9lxn/6c//encfvvt2zSIn3rqqQwdOjQdOqz9u8RDDz2UyZMnJ0mOO+64bfb6AADQkjYryJOkU6dO
643xJOnbt+8W3XJw+vTpmT59epIPbq+YJI8//ni++93vJvngUpTvfOc7SZKf/OQnefHFFzNs2LD0
6dMnyQd3WXn44YeTJOPHj8/++++/2TMAAEAJmx3k28KCBQsyZcqUtbbV1dWlrq4uSdKvX7+mID/u
uOMyffr0zJ8/PzNnzsz777+f3r175+ijj85pp52WAw88sOLzAwDAlqpqbGxsLD1ESe3tljtJ+7zV
UCnWunKsdeVY68qy3pVjrSunPa51i9z2EAAAaHmCHAAAChLkAABQkCAHAICCBDkAABS0Rbc9XLly
ZZ566qn8+c9/TpLssssu+fjHP55OnTq16HAAANDWbVaQr1ixIpdddlluvvnmvPPOO2vt69q1az7/
+c/nnHPOyQ477NCiQwIAQFvV7CB/7733csYZZ2TevHlpbGzMLrvskn79+iVJXnnllbz66qu55ppr
8thjj+Xaa68V5QAA0AzNDvIrr7wyjz/+eIYMGZLvfe97GTly5Fr7H3300fzoRz/KE088kV/96lcZ
P358iw8LAABtTbM/1HnHHXdkxx13zOTJk9eJ8SQZMWJErrnmmnz0ox/N//2//7dFhwSgddh556Sq
6oO/A9Aymh3kr776akaOHJmePXtu8JiePXtm5MiRefXVV1tkOABaj513rkry4eWIO/z/nwHYWs0O
8pqamnTs2HGTx3Xs2DE1NTVbNRQArdFHNvEzAFui2UF+2GGH5dFHH01DQ8MGj2loaMijjz6aQw89
tEWGA6A1WbOJnwHYEs0O8q9//evp1q1bvvKVr+S5555bZ//zzz+f//7f/3u6d++eb3zjGy06JACt
war8e4Sv+f8/A7C1mn2XlQsuuCBDhgzJjBkzctxxx2WvvfZK//79k3xw28OFCxemsbExhx9+eC64
4IK1HltVVZUf//jHLTs5ABX12mtJsjK1tZ2zZMnK0uMAtBnNDvIpU6akquqDD/CsWbMmCxYsyIIF
C9Y5bsaqPY6PAAAgAElEQVSMGetsE+QAALB+zQ7yiRMnbss5AACgXWp2kJ9wwgnbcg4AAGiXmv2h
TgAAoOUJcgAAKKjZl6xMmDCh2U/qQ5wAANA8m3WXlY358A4sjY2NghwAAJppq++ysmbNmvzxj3/M
/fffnyeffDLjxo3L0KFDW2xAAABoy1rsLitnn312LrroovzLv/xLbrvttq0eDAAA2oMW/VDn17/+
9XTv3j2XXHJJSz4tAAC0WS0a5B06dMg+++yThx9+uCWfFgAA2qwWv+1hQ0NDGhoaWvppAQCgTWrR
IJ8zZ05mz56d/v37t+TTAgBAm9XsD3VefvnlG9y3fPnyvPDCC3nggQeyevXqnHTSSS0yHAAAtHWb
FeRVVVVpbGzc4DEdOnTIF77whXzpS19qkeEAAKCta3aQn3XWWRvc95GPfCS77LJLRo4cmV133bVF
BgMAgPagRYIcAADYMi1+lxUAAKD5mn2G/D9auXJlnnrqqbz66qtJkl122SX77rtvOnXq1KLDAQBA
W7dZQf7+++/n8ssvz4033ph33nlnrX1du3bNaaedlrPOOisf+chHWnRIAABoq5od5KtXr85XvvKV
/P73v09jY2Nqa2szYMCAJEldXV2WLFmSq666KvPnz89VV12Vjh07brOhAQCgrWh2kP/617/Ogw8+
mEGDBuV73/teRo0atdb+mTNn5sc//nF+//vf55Zbbsmpp57a4sMCAEBb0+wPdU6dOjVdunTJtdde
u06MJ8moUaMyefLk7LDDDrn99ttbdEgAAGirmh3kzz33XEaOHJlddtllg8d8eC/y5557rkWGAwCA
tq7ZQb5q1ap06dJlk8d16dIlq1at2qqhAACgvWh2kPft2zezZ8/OypUrN3jMypUrM3v27PTt27dF
hgMAgLau2UF++OGHZ8mSJfnud7+bt99+e5399fX1+R//43/k9ddfzxFHHNGiQwIAQFvV7LusfPnL
X84dd9yR3/72t7n//vvz2c9+Nv37909VVVXq6uryu9/9Lu+880769OmTL3/5y9tyZgAAaDOaHeQ1
NTW59tpr861vfSvz58/P//k//ydVVVVJksbGxiTJfvvtlwsvvDA77bTTtpkWAADamM36ps6BAwfm
N7/5TWbPnp1Zs2bl1VdfTfLB3VWGDx+eAw88cJsMCQAAbVWzg7yhoSFJsuOOO+bAAw8U3wAA0AKa
/aHOAw88MGeeeea2nAUAANqdZgf5Rz/60QwcOHBbzgIAAO1Os4N88ODBTdeMAwAALaPZQX7yySfn
sccey/z587flPAAA0K5sVpB/4QtfyBe/+MVcddVVWbRo0Ua/tRMAANi0Zt9lZejQoU1/vvjii3Px
xRdv8Niqqqo8/fTTWzcZAAC0A80O8g+//KeljwUAgPas2UG+cOHCbTkHAAC0S82+hhwAAGh5ghwA
AApq9iUr/9Ef//jHLFu2bL37+vbtm5qamq0aCgAA2ouNBvl3vvOdPP/88/nBD36Q/fbbr2n7ZZdd
lttvv329jznooINyzTXXtOyUAADQRm3wkpUnnngiU6dOzc4777xWjH+osbExu+6661p/de/ePQ8/
/HCeeOKJbTo0AAC0FRs8Qz5t2rRUVVXlv/7X/7re/VVVVbn33nvX2vbMM8/k+OOPz29/+9t84hOf
aNlJAQCgDdrgGfK5c+emV69eGTZsWLOfbK+99sruu++euXPntshwAADQ1m0wyF988cW1vp2zuQYP
HpyXX355q4YCAID2YoOXrNTX12ennXZa776//Mu/zN57773efV27dk19fX3LTAcAAG3cBoN8hx12
yPLly9e779Of/nQ+/elPr3ffO++8k06dOrXMdAAA0MZt8JKV3r1757nnntvsJ3zuuefSu3fvrRoK
AADaiw0G+bBhw/Lyyy/nmWeeafaTLVy4MC+99FL233//FhkOAADaug0G+V/+5V+msbEx5513Xlat
WrXJJ1q1alXOO++8VFVVZcyYMS06JAAAtFUbDPJPf/rTGT58eB577LGcccYZG7185bnnnsvpp5+e
OXPm5IADDsioUaO2ybAAANDWbPBDnUnyi1/8Ip///Ocze/bsHHvssdl7773z8Y9/PD179kySLF26
NPPnz8/ChQvT2NiYfv365Re/+EVFBgcAgLZgo0Heq1ev3HbbbTn33HNz1113ZcGCBVm4cOFaxzQ2
NqaqqipHHXVUfvCDH6SmpmabDgwAAG3JRoM8SXr06JGLL744L730Uu6777489dRTWbZsWZKkpqYm
++yzTw477LAMGjRoW88KAABtziaD/EMDBw7M6aefvi1nAQCAdmeDH+oEAAC2PUEOAAAFCXIAAChI
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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Just a dot!</p>
<p>Now let's think, what we actually plotted? We grouped the data by the ID that we've found previously and we plotted average <em>Date</em> in the group versus the size of each group. We found that ID is an aggregation index -- so for each date the <em>Cost</em> is aggreagated for each possible index. So group size shows for how many days we have <em>Const</em> information for each ID and mean relative date shows some information about these days.</p>
<p>For test set it is expectable that both average date and the size of the groups are the same for each group: the size of each group is $14$ (as we have $14$ test days) and mean date is $6.5$, because for each group (index) we have $14$ different days, and $\frac{0 + 1 + \dots + 13}{14} = 6.5$.</p>
<p>And now we can explain everything for the train set. Look at the top of the triangle: for those points (groups) we have <em>Cost</em> information for all the days in the train period, while on the sides we see groups, for which we have very few rows.</p>
<p>But why for some groups we have smaller number of rows, than number of days? Let's look at the <em>Impressions</em> column.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[16]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">train</span><span class="o">.</span><span class="n">Impressions</span><span class="o">.</span><span class="n">value_counts</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[16]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>1         1602929
2          565896
3          287128
4          175197
5          119092
6           86651
7           66443
8           53007
9           42984
10          35731
11          30248
12          25950
13          22629
14          20126
15          17503
16          15682
17          14100
18          12848
19          11597
20          10724
21           9864
22           8931
23           8316
24           7953
25           7168
26           6684
27           6196
28           5863
29           5556
30           5223
           ...   
4978            1
15210           1
9076            1
13174           1
116535          1
4979            1
17273           1
90974           1
4976            1
5906            1
7023            1
60282           1
7955            1
13881           1
2921            1
4970            1
7019            1
17249           1
23394           1
28210           1
11116           1
15929           1
7017            1
95761           1
2923            1
15213           1
9070            1
5692            1
13162           1
13922           1
Name: Impressions, Length: 8135, dtype: int64</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>We never have $0$ value in <em>Imressions</em> column. But in reality, of course, some ads with some combination of keyword, slot, device were never shown. So this looks like a nice explanation for the data: in the train set we <strong>only</strong>  have information about ads (IDs, groups) which were shown at least once. And for the test set, we, of course, want to predict <em>Cost</em> <strong>for every</strong> possible ID.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>What it means for competitors, is that if one would just fit a model on the train set as is, the predictions for the test set will be biased by a lot. The predictions will be much higher than they should be, as we are only given a specific subset of rows as <code>train.csv</code> file.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>So, before modeling we should first extend the trainset and inject rows with <code>0</code> impressions. Such change will make train set very similar to the test set and the models will generalize nicely.</p>

</div>
</div>
</div></section></section>
</div>
</div>

<script>

require(
    {
      // it makes sense to wait a little bit when you are loading
      // reveal from a cdn in a slow connection environment
      waitSeconds: 15
    },
    [
      "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/lib/js/head.min.js",
      "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/js/reveal.js"
    ],

    function(head, Reveal){

        // Full list of configuration options available here: https://github.com/hakimel/reveal.js#configuration
        Reveal.initialize({
            controls: true,
            progress: true,
            history: true,

            transition: "slide",

            // Optional libraries used to extend on reveal.js
            dependencies: [
                { src: "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/lib/js/classList.js",
                  condition: function() { return !document.body.classList; } },
                { src: "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0/plugin/notes/notes.js",
                  async: true,
                  condition: function() { return !!document.body.classList; } }
            ]
        });

        var update = function(event){
          if(MathJax.Hub.getAllJax(Reveal.getCurrentSlide())){
            MathJax.Hub.Rerender(Reveal.getCurrentSlide());
          }
        };

        Reveal.addEventListener('slidechanged', update);

        function setScrollingSlide() {
            var scroll = false
            if (scroll === true) {
              var h = $('.reveal').height() * 0.95;
              $('section.present').find('section')
  :wq
  .filter(function() {
                  return $(this).height() > h;
                })
                .css('height', 'calc(95vh)')
                .css('overflow-y', 'scroll')
                .css('margin-top', '20px');
            }
        }

        // check and set the scrolling slide every time the slide change
        Reveal.addEventListener('slidechanged', setScrollingSlide);

    }

);
</script>

jk</body>


</html>

