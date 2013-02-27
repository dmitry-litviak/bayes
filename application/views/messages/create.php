<div class="container-fluid">
    <form class="form-actions" action="<?php echo URL::site('messages/create') ?>" method="POST">
        <fieldset class="places">
            <legend>Создание сообщений</legend>
            <div class="row-fluid">
                <div class="span7">
                    <div class="control-group">
                        <label class="control-label" for="title">Название:</label>
                        <div class="controls">
                            <input class="span10" type="text" id="title" placeholder="Название для текста" name="title">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="message">Текст сообщения:</label>
                        <div class="controls">
                            <textarea rows="5" style="width: 500px" type="text" id="message" placeholder="Какой-либо текст" name="message" ></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <input class="btn btn-large btn-block btn-primary" value="Сохранить" type="submit">
        <input class="btn btn-large btn-block" value="Очистить поля" type="reset">
    </form>
</div>
    
    


    

