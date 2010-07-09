m = ARGV[0] ? ARGV[0] : "pomo"
i = ARGV[1] ? ARGV[1].to_i : 1
while (true) do
  type = "warning"
  image = "./images/#{type}.png"
  cmd = "notify-send -t 2 -i " + image.to_s + " " + m + "__"+ i.to_s + "__"
   
  Kernel.system cmd + "0%"
  sleep 5*60
  Kernel.system cmd + "20%"
  sleep 5*60
  Kernel.system cmd + "40%"
  sleep 5*60
  Kernel.system cmd + "60%"
  sleep 5*60
  Kernel.system cmd + "80%"
  sleep 5*60
  Kernel.system cmd + " break "
  sleep 5*60

  i += 1
end
