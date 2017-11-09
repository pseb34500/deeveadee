<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link  href="/assets/css/bootstrap.min.css" rel="stylesheet">
        <title>Deeveadee</title>
    </head>
    <body>
      <div id="nav">
          <ul id="navbar" class="nav nav-tabs">
              <li role="presentation" class="active"><a href="http://deeveadee.my/index.php/">Accueil</a></li>
              <li role="presentation"><a href="http://deeveadee.my/index.php/admin">Liste des DVD</a></li>
              <li role="presentation"><a href="#">Conexion</a></li>
          </ul>
        </div>
        <div class="panel panel-default">
        <div class="panel-heading text-center"><h1>Les DvD's</h1></div>
        <table class="table table-bordered text-center">
            <thead>
              <tr class="text-center">
                <th class="text-center">ID</th>
                <th class="text-center">TITRE</th>
                <th class="text-center">AUTEUR</th>
                <th class="text-center">ANNEE</th>
                <th class="text-center">CATEGORIE</th>
                <th class="text-center">ACTION</th>
              </tr>
            </thead>
        <?php foreach ($Dvd as $dvd_R): ?>
            <tr>
                <?= '<th class="text-center">'. $dvd_R['numD'].'</th>'; ?>
                <?= '<th class="text-center">'.$dvd_R['titreD'].'</th>'; ?>
                <?= '<th class="text-center">'.$dvd_R['auteurD'].'</th>'; ?>
                <?= '<th class="text-center">'.$dvd_R['annéeD'].'</th>'; ?>
                <?= '<th class="text-center">'.$dvd_R['catégorieD'].'</th>'; ?>
                <?= '<th class="text-center"><a class="btn btn-warning" href="'.site_url('admin/update/'.$dvd_R['numD']).'"><i class="glyphicon glyphicon-pencil"></i> </a> | ';?>
                <?= '<a class="btn btn-danger" href="'.site_url('admin/delete/'.$dvd_R['numD']).'" ><i class="glyphicon glyphicon-trash"></i> </a> </th>';?>
            </tr>
        <?php endforeach; ?>

        </table>
        <br>
        <a href="http://deeveadee.my/index.php/admin/add" class="btn btn-success text-center btn-block"> <i class="glyphicon glyphicon-plus"></i></a>
        </div>
    </body>
</html>
