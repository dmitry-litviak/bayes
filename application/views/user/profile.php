<div class="container-fluid">
    <form class="form-actions" action="<?php echo URL::site('user/save') ?>" method="POST">
        <fieldset class="places">
            <legend>Edit Profile</legend>   
            <div class="row-fluid">
                <div class="span5">
                    <div class="control-group">
                        <label class="control-label" for="first_name">Имя:</label>
                        <div class="controls">
                            <input class="span10" type="text" id="first_name" placeholder="Например: Иван" name="profile[first_name]" value="<?php echo $logged_user->user_profile->first_name ?>">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="last_name">Фамилия:</label>
                        <div class="controls">
                            <input class="span10" type="text" id="last_name" placeholder="Например: Иванов" name="profile[last_name]" value="<?php echo $logged_user->user_profile->last_name ?>">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="gender">Пол: </label>
                        <div class="controls">
                          <select name="profile[gender]" id="gender" class="span10">
                            <option <?php echo $logged_user->user_profile->gender == 'male' ? 'selected' : '' ?> value="male" >Male</option>
                            <option <?php echo $logged_user->user_profile->gender == 'female' ? 'selected' : '' ?> value="female" >Female</option>
                          </select>
                        </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="dob">Дата рождения:</label>
                      <div class="controls">
                          <div class="input-append date" id="dp3" data-date="<?php echo Helper_Output::siteDate($logged_user->user_profile->dob) ?>" data-date-format="dd--mm--yyyy">
                                <input id="dob" readonly name="profile[dob]" readonly class="span5" size="16" type="text" value="<?php echo Helper_Output::siteDate($logged_user->user_profile->dob) ?>">
                                <span class="add-on"><i class="icon-calendar"></i></span>
                            </div>
                      </div>
                    </div>
                </div>
            </fieldset>
        <input class="btn btn-large btn-block btn-primary" value="Сохранить" type="submit">
        <input class="btn btn-large btn-block" value="Очистить поля" type="reset">
    </form>
</div>
    
    


    

