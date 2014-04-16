class Sundays
    attr_accessor :currentMonth, :currentMonthCount, :currentMonthDay, :currentWeekday, :currentWeekdayCount, :currentYearDay, :currentYear
    def initialize
        @months = [:Jan, :Feb, :Mar, :Apr, :May, :Jun, :Jul, :Aug, :Sep, :Oct, :Nov, :Dec]
        @days = [:Sun, :Mon, :Tue, :Wed, :Thu, :Fri, :Sat]
        @monthMaxes = {:Jan => 30, :Feb => 27, :Mar => 30, :Apr => 29, :May => 30, :Jun => 29, :Jul => 30, :Aug => 30, :Sep => 29, :Oct => 30, :Nov => 29, :Dec => 30}
        @currentMonth = :Jan
        @currentMonthCount = 0
        @currentWeekdayCount = 2
        @currentWeekday = :Tue
        @currentMonthDay = 0
        @currentYearDay = 0
        @currentYear = 1901
    end

    def onward
        self.leapCheck
        if @currentMonthDay < @monthMaxes[@currentMonth] + @leap
            @currentMonthDay += 1
        else
            @currentMonthCount < 11 ? @currentMonthCount += 1 : @currentMonthCount = 0
            @currentMonthDay = 0
        end
        @currentMonth = @months[@currentMonthCount]
        @currentWeekdayCount < 6 ? @currentWeekdayCount += 1 : @currentWeekdayCount = 0
        @currentWeekday = @days[@currentWeekdayCount]
        if @currentYear % 400 == 0 || @currentYear % 4 == 0
            if @currentYearDay < 365
                @currentYearDay += 1
            else
                @currentYearDay = 0
                @currentYear += 1
            end
        else
            if @currentYearDay < 364
                @currentYearDay += 1
            else
                @currentYearDay = 0
                @currentYear += 1
            end
        end
    end

    def leapCheck
        (@currentYear % 400 == 0 || @currentYear % 4 == 0) && @currentMonth == :Feb ? @leap = 1 : @leap = 0
    end
end

sunday = Sundays.new
count = 0
while sunday.currentYear <= 2000
    sunday.onward
    count += 1 if sunday.currentWeekday == :Sun and sunday.currentMonthDay == 0
end
puts count
