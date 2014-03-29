ones = [
    "one"
    "two"
    "three"
    "four"
    "five"
    "six"
    "seven"
    "eight"
    "nine"
]
teens = [
    "ten"
    "eleven"
    "twelve"
    "thirteen"
    "fourteen"
    "fifteen"
    "sixteen"
    "seventeen"
    "eighteen"
    "nineteen"
]
tens = [
    "twenty"
    "thirty"
    "forty"
    "fifty"
    "sixty"
    "seventy"
    "eighty"
    "ninety"
]
hundreds = " hundred"
thousands = " thousand"
str = ""
count = 1
for i in [1..1000]
    if count in [1..9]
        str += ones[count - 1]
    else if count in [10..19]
        str += teens[count - 10]
    else if count in [20..99]
        leading = Math.floor(count / 10)
        trailing = count - (leading * 10)
        str += tens[leading - 2]
        str += " " + ones[trailing - 1] if trailing > 0
    else if count in [100..999]
        leading = Math.floor(count / 100)
        middling = Math.floor((count - (leading * 100)) / 10)
        trailing = count - (leading * 100) - (middling * 10)
        if middling is 0 and trailing > 0
            str += ones[leading - 1] + hundreds + " and " + ones[trailing - 1]
        else if middling is 1
            str += ones[leading - 1] + hundreds + " and " + teens[trailing]
        else
            str += ones[leading - 1] + hundreds
            str += " and " + tens[middling - 2] if middling > 1
            str += " " + ones[trailing - 1] if trailing > 0
    else
        leading = Math.floor(count / 1000)
        str += ones[leading - 1] + thousands
    count++
    str += " "
str = str.replace /\s+/g, ""
console.log str.length
