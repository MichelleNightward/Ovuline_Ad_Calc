def calculate_click_price
   #These class variables are presented together here for easy alteration in the future
   #The instance variables are plugged into price_calculator and defult to 1 so they effictively have no change on the math output
   #quote = Quote.find[params[:id]]

   quote = 'hi'
   #monkey is used to check that if statements work when they are passed nil
   monkey = nil

   click_base_price = 0.75
   location_multi = 1.25
   location = 1
   age_multi = 1.25
   age = 1
   ttc_multi = 1.25
   ttc = 1
   weeks_pregnant_multi = 1.25
   weeks_pregnant = 1
   days_since_sign_up_multi = 1.25
   days_since_signup = 1
   fertility_condition_multi = 1.25
   fertility_condition = 1
   cycle_stage_multi = 1.25
   cycle_stage = 1
   house_hold_income_multi = 1.25
   house_hold_income = 1
   monthly_activity_multi = 1.25
   monthly_acivity = 1

    if quote != nil
        location = location_multi
    end

    if monkey != nil
        location = location_multi
    end


    #Should this remain stored in an instance variable?
   price_calculator = click_base_price*location*age*ttc*weeks_pregnant*days_since_signup*fertility_condition*cycle_stage*house_hold_income*monthly_acivity
end