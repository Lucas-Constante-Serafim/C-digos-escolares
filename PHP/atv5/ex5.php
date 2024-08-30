<html>
<body>
    <table border='1'>
<?php
    $grao = 1;
    for($l=1;$l<=8;$l++)
    {
        echo "<tr>";
        for($c=1;$c<=8;$c++)
        {
            echo "<td>$grao</td>";
            $grao = $grao *2;
        }
    }
?>
</body>
</html>