
#This is for emailing multiple people at once
def 
    
end


#this makes an arrary of emails
#are these the same? can I use array references on a DB?
#
def prep_those_emails
    @emails = EmployeeEmail.all
    @who_array = {}
    @emails.each do |f|
        @who_array << f.emails
    end
    @who_array.each do |f|
        @who << "#{f}"
        #need to break this down to test it piece by piece
        if f != @who_array[-1]
            @who << ", "
        end
    end
    puts @who
end