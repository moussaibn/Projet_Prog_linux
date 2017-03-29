

<?php

$video = "http://localhost:8080/Ressources/Videos/"."$_GET['nom']";


print    "<video controls autoplay name='media'>
          <source type='video/mp4' src='$video'>
            Ici la description alternative
        </video>";
