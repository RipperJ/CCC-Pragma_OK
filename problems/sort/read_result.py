import os

f = open("./vitis_hls.log", 'r')
line = f.read()
fmax = min(float(line[line.find("Fmax"): line.find("Fmax") + 15].split()[1]), 300)
rtl_sim_time = float(line.split("@")[-1].split()[0].strip('"'))

print(rtl_sim_time / fmax / 10)
print("RTL_sim_time: {}, fmax: {}, clock period: {}".format(rtl_sim_time, float(line[line.find("Fmax"): line.find("Fmax") + 15].split()[1]), 10))
