<div class="container-fluid">
    <form class="form-actions" action="<?php echo URL::site('messages/learn') ?>" method="POST">
        <fieldset class="places">
            <legend>Обучение фильтра</legend>
            <div class="row-fluid">
                <div class="span7">
                    <div class="control-group">
                        <label class="control-label" for="message">Текст сообщения:</label>
                        <div class="controls">
                            <textarea style="width:500px" rows="5" type="text" id="message" placeholder="Какой-либо текст" name="message" ></textarea>
                        </div>
                    </div>
                </div>
                <div class="span5">
                    <div class="control-group">
                        <label class="control-label" for="type">Тип:</label>
                        <div class="controls">
                            <select name="type" class="span10">
                                <option value="spam">Spam</option>
                                <option value="ham" >Ham</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
        <input class="btn btn-large btn-block btn-primary" value="Обучить" type="submit">
        <input class="btn btn-large btn-block" value="Очистить поля" type="reset">
    </form>
</div>
    
    


    

