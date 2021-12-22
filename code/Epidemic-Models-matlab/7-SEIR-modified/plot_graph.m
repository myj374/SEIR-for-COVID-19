output1 = importdata('7-SEIR-modified\output1.txt',' ',0);
output2 = importdata('7-SEIR-modified\output2.txt',' ',0);
output3 = importdata('7-SEIR-modified\output3.txt',' ',0);
output = importdata('7-SEIR-modified\output.txt',' ',0);
reality = importdata('china_daily_status.txt','	',1);
x=1:200;
figure(1)
plot(22:171,reality.data(:, 2),x,output(1,:))
grid on 
title('累计确诊')
legend('现实','仿真')
figure(2)
plot(22:171,reality.data(:, 5),x,output(2,:))
grid on 
title('现存确诊')
legend('现实','仿真')
figure(3)
plot(22:171,reality.data(:, 3),x,output(3,:))
grid on 
title('累计死亡')
legend('现实','仿真')
figure(4)
plot(22:171,reality.data(:, 4),x,output(4,:))
grid on 
title('累计出院')
legend('现实','仿真')
