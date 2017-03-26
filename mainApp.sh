#!/bin/bash
$(service shellinabox stop)
$(service shellinabox restart)
xdg-open http://localhost:8080/projetShell/base.php
