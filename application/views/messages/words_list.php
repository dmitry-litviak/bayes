<table class="table table-hover">
    <tr>
        <th>#</th>
        <th>Слово</th>
        <th>Ham</th>
        <th>Spam</th>
    </tr>
    <tbody>
    <?php foreach ($words as $word): ?>
    <tr>
        <td><?php echo $word->id ?></td>
        <td><?php echo $word->word ?></td>
        <td><?php echo $word->ham ?></td>
        <td><?php echo $word->spam ?></td>
    </tr>
        <?php endforeach; ?>
    <?php if (!count($words)): ?>
    <tr><td colspan="3">Cлов не обнаружено. Обучите фильтр</td></tr>
        <?php endif; ?>
    </tbody>
</table>