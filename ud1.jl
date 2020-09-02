using Printf;
using Plots;
gr();
anim = Animation();

f(x) = 1/2*cos(8pi*(x-1/2)) + 1/2;
function init()
	global c = 1.0;
	global nx = 101;
	global x = range(0.0, stop=1.0, length=nx);
	global dx = 2e-3;
	global u1 = zeros(Float64, nx);
	global u2 = zeros(Float64, nx);
	for i = 1:nx
		if 3/8 <= x[i] <= 5/8
			u1[i] = f(x[i]);
			u2[i] = f(x[i]);
		else
			u1[i] = 0.0;
			u2[i] = 0.0;
		end
	end
	global t = 0.0; 
	global tlim = 1.2;
	global dt = 2e-3;
end

function main()
	init();
	while t < tlim
		pre_u1 = copy(u1);
		pre_u2 = copy(u2);
		for i = 2:nx-1
			u1[i] = pre_u1[i] - c*dt/dx*(pre_u1[i] - pre_u1[i-1]);
			u2[i] = pre_u2[i] + c*dt/dx*(pre_u2[i+1] - pre_u2[i]);
		end
		u1[begin] = u1[end] = u2[begin] = u2[end] = 0.0;
		plt = plot(x, [u1 u2], xlims = (0.0, 1.0), xticks=0:0.2:1.0, ylims=(0,1.0), yticks=0:0.2:1.0, xlabel="x", ylabel="u", title="Upwind differencial method", legend=false);
		frame(anim, plt);
		@printf("t = %.4f\n", t);
		global t +=  dt;
	end
	gif(anim, "hyperbole_PDE.gif", fps=5);
end

main();
