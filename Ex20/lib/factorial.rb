def factorial n
  begin
    (1..n).inject(:*)
  rescue Exception
    p Exception
  end
end