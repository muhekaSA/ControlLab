num = [25];
den = [1 4 25];

figure(1)%plot Transfer Function (respon sistem)
step(num,den);
grid

figure(2); %plot diagram bode untuk identifikasi phase dan magnitude
sys = tf(num, den); 
bode(sys) %plot bide diagram bode&phase
grid

dc_gain = dcgain(sys); %perbandingan respon keadaan tunak dan step input
disp(['DC Gain:',num2str(dc_gain)]);
%u=0.998;
%ss=0.998;
%dcgain=ss/u

%menentukan %overshoot secara manual
peak=1.25; 
ss = 0.998;
os = 100*(peak-ss)/ss;
disp(['% OverShoot:',num2str(os)]);

%menentukan damping ratio secara manual
dampingratio = -log(os/100)/sqrt(pi^2+(log(os/100))^2);
disp(['Damping Ratio:',num2str(dampingratio)]);

%Naturan Frequency Secara Manual
dt=(2.01-0.639);
%dt=2.31;
wd=2*pi/dt;
wn=wd/sqrt(1-dampingratio^2);
disp(['Frekuensi Natural:',num2str(wn)]);


%---------------------- Identifikasi Damping, Frequency dengan Short Function -------%
damp(sys) 

%--------------- IDENTIFIKASI TOTAL--------------------%
S = stepinfo(sys)%identifikasi by function (rise time, settling, overshot,peak,peaktime)








