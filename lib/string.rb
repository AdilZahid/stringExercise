# Solution # 1
# Extended Way:
class String
  def remove_dollar_sym
    # just remove the dollar symbol from the string.
    tr('$', '')

    # gsub('$', '')   # using gsub to replace '$'
    # gsub(/\W+/, '') # using gsub with regex to remove any special character including '$' from the string and allow only words
  end
end

arr_string = ["B$u$i$ld", "$t$$h$e", "N$e$x$t", "E$$ra", "$$o$f$", "S$$of$t$wa$r$e", "De$$ve$l$op$me$n$t"]

arr_string.map(&:remove_dollar_sym).join(' ')


# Solution # 2
# Direct Way:

arr_string = ["B$u$i$ld", "$t$$h$e", "N$e$x$t", "E$$ra", "$$o$f$", "S$$of$t$wa$r$e", "De$$ve$l$op$me$n$t"]

arr_string.map{|str| str.tr('$', '')}.join(' ')

# or to handle nil value and other than string dataTypes
arr_string.map(&:to_s).map{|str| str.tr('$', '')}.join(' ')
