<div class="row-fluid">
    <div class="span6">
        <h4 style="text-align: center">SPAM</h4>
        <table class="table table-hover">
           <tr>
                <th>#</th>
                <th>Название</th>
                <th>Вероятность</th>
                <th>Текст сообщения</th>
           </tr>
           <tbody>
               <?php foreach ($spams as $spam): ?>
                    <tr>
                        <td><?php echo $spam->id ?></td>
                        <td><?php echo $spam->title ?></td>
                        <td><?php echo $spam->probability ?></td>
                        <td style="text-align: center"><a href="#myModal-message" role="button" data-toggle="modal" class="btn text" data-id="<?php echo $spam->id ?>"><i class="icon-fullscreen"></i></a></td>
                    </tr>
               <?php endforeach; ?>
               <?php if (!count($spams)): ?>
                    <tr><td colspan="3">Spam-сообщений не обнаружено</td></tr>
               <?php endif; ?>
           </tbody>
        </table>
    </div>

    <div class="span6">
        <h4 style="text-align: center">HAM</h4>
        <table class="table table-hover">
            <tr>
                <th>#</th>
                <th>Название</th>
                <th>Вероятность</th>
                <th>Текст сообщения</th>
            </tr>
            <tbody>
                <?php foreach ($hams as $ham): ?>
                        <tr>
                            <td><?php echo $ham->id ?></td>
                            <td><?php echo $ham->title ?></td>
                            <td><?php echo $ham->probability ?></td>
                            <td style="text-align: center"><a href="#myModal-message" role="button" data-toggle="modal" class="btn text" data-id="<?php echo $ham->id ?>"><i class="icon-fullscreen"></i></a></td>
                        </tr>
                <?php endforeach; ?>
                <?php if (!count($hams)): ?>
                    <tr><td colspan="3">Ham-сообщений не обнаружено</td></tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</div>
<?php echo View::factory('messages/partials/message')->render() ?>