#method has NOT BEEN TESTED after writting all the if/else statements


def calculate_click_price
   #These class variables are presented together here for easy alteration in the future
   #The instance variables are plugged into @price_calculator and defult to 1 so they effictively have no change on the math output
   @quote = Quote.find[params[:id]]

   #would there be an issue with if statements without an else component? 
   #In short, can I cut the else and leave the instance defaults here at the top?
   @@click_base_price = 0.75
   @@location_multi = 1.25
   @@age_multi = 1.25
   @@ttc_multi = 1.25
   @@weeks_pregnant_multi = 1.25
   @@days_since_sign_up_multi = 1.25
   #should the instance variables be initialized up here or in the if/else statements?
   @days_since_signup = 1
   @@fertility_condition_multi = 1.25
   @@cycle_stage_multi = 1.25
   @cycle_stage = 1
   @@house_hold_income_multi = 1.25
   @house_hold_income = 1
   @@monthly_activity_multi = 1.25
   @monthly_acivity = 1

   #.location is the name of a column in the Quote DB
   # there should be a way to dynamically generate these if/else statements
    if @quote.location != nil
        @location = @@location_multi
    else
        @location = 1
    end

    #should if/else statements include != nil || 0 || {other input indicating company did not enter info?}
    #this is probably question for later
    #changes in case by case basis mean these if/else statements should be custom and ny dynamically generated
    if @quote.age != nil
        @age = @@age_multi
    else
        @age = 1
    end

    if @quote.ttc != nil
        @ttc = @@ttc_multi
    else
        @ttc = 1
    end

    if @quote.weeks_pregnant != nil
        @weeks_pregnant = @@weeks_pregnant_multi
    else
        @weeks_pregnant = 1
    end

    if @quote.days_since_signup != nil
        @days_since_signup = @@days_since_signup_multi
    else
        @days_since_signup = 1
    end

    if @quote.fertility_condition != nil
        @fertility_condition = @@fertility_condition_multi
    else
        @fertility_condition = 1
    end

    if @quote.cycle_stage != nil
        @cycle_stage = @@cycle_stage_multi
    else
        @cycle_stage = 1
    end

       if @quote.house_hold_income != nil
        @house_hold_income = @@house_hold_income_multi
    else
        @house_hold_income = 1
    end

    if @quote.monthly_acivity != nil
        @monthly_acivity = @@monthly_acivity_multi
    else
        @monthly_acivity = 1
    end

    #Should this remain stored in an instance variable?
   @price_calculator = @@click_base_price*@location*@age*@ttc*@weeks_pregnant*@days_since_signup*@fertility_condition*@cycle_stage*@house_hold_income*@monthly_acivity
end