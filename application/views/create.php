<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">

        <title></title>
    </head>
    <body>
        <?= validation_errors(); ?>

        <?php if(!isset($Dvd['numD'])){
            $Dvd['numD'] = '';
            $Dvd['titreD'] = '';
            $Dvd['auteurD'] = '';
            $Dvd['annéeD'] = '';
            $Dvd['catégorieD'] = '';
            $Dvd['nombreD'] = '';
            $Dvd['societeD'] = '';
        } ?>

        <?=form_open('Admin/add'); ?>
        <form class="form-group row">
              
                <div class="col-10">
                    <input type="hidden" class='form-control' name="numD" value="<?= $Dvd['numD']; ?>"><br>
                </div>
                <label for="titreD" class="col-2 col-form-label">Titre du dvd</label>
                <div class="col-10">
                    <input type="input" class='form-control' name="titreD" value="<?= $Dvd['titreD']; ?>"><br>
                </div>
                <label for="auteurD" class="col-2 col-form-label">auteurD</label>
                <div class="col-10">
                    <input type="input"  class='form-control' name="auteurD" value="<?= $Dvd['auteurD']; ?>"><br>
                </div>
                <label for="annéeD" class="col-2 col-form-label">annéeD</label>
                <div class="col-10">
                    <input type="input" name="annéeD" class='form-control' value="<?= $Dvd['annéeD']; ?>"><br>
                </div>
                <label for="catégorieD" class="col-2 col-form-label">catégorieD</label><br>
                <div class="col-10">
                    <input type="input" class='form-control' name="catégorieD" value="<?= $Dvd['catégorieD']; ?>"><br>
                </div>

                <label for="nombreD" class="col-2 col-form-label">nombreD</label><br>
                <div class="col-10">
                    <input type="input" class='form-control' name="nombreD" value="<?= $Dvd['nombreD']; ?>"><br>
                </div>
                <label for="societeD" class="col-2 col-form-label">societeD</label><br>
                <div class="col-10">
                    <input type="input" class='form-control' name="societeD" value="<?= $Dvd['societeD']; ?>"><br>
                </div>
                <input class="btn btn-primary" type="submit" name="submit" value="Créer dvd" /><br>

        </form>
    </body>
</html>
