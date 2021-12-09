︠68fdd9a8-cf0e-4681-b038-8c3b70f60918︠

x   = SR.var('x')
x0  = 0
f   = ln(x+1)
p   = plot(f, -20, 20, thickness=2)
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))

@interact
def _(order=slider([0 .. 12])):
  ft = f.taylor(x, x0, order)
  pt = plot(ft, -20, 20, color='green', thickness=2)
  pretty_print(html(r'$f(x)\;=\;%s$' % latex(f)))
  pretty_print(html(r'$\hat{f}(x;%s)\;=\;%s+\mathcal{O}(x^{%s})$' % (x0, latex(ft), order+1)))
  show(dot + p + pt, ymin=-1, ymax=10)

x   = SR.var('x')
x0  = 0
f   = ln(x+1)
p   = plot(f, -3, 3, thickness=2,legend_label='f(x) = ln(x+1)')
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))
ptaylor = [plot(f.taylor(x, x0, order), -3,3, color='green', thickness=2, legend_label= "Taylor " + str(order) +": "+ str(f.taylor(x, x0, order))) for order in range(5)]

frames = [p+dot+ptaylor[int(order/12)] for order in range(60)]
a = animate(frames, ymin=-10, ymax=10)
a.show()
a.save('ln(x+1)_taylor_animation_1.gif')
︡31e520de-8763-47bd-83f9-7adc695148b0︡{"stdout":"verbose 0 (3839: plot.py, generate_plot_points) WARNING: When plotting, failed to evaluate function at 95 points.\n"}︡{"stdout":"verbose 0 (3839: plot.py, generate_plot_points) Last error message: 'can't convert complex to float'\n"}︡{"interact":{"controls":[{"animate":true,"control_type":"slider","default":0,"display_value":true,"label":"order","vals":["0","1","2","3","4","5","6","7","8","9","10","11","12"],"var":"order","width":null}],"flicker":false,"id":"ee07dd1b-3ffd-4574-ac30-396ee9c58937","layout":[[["order",12,null]],[["",12,null]]],"style":"None"}}︡{"stdout":"verbose 0 (3839: plot.py, generate_plot_points) WARNING: When plotting, failed to evaluate function at 67 points.\n"}︡{"stdout":"verbose 0 (3839: plot.py, generate_plot_points) Last error message: 'can't convert complex to float'\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-89137fcc-933a-40e0-855f-b0c8c254793f/692/tmp_y_sqikrf.webm","show":true,"text":null,"url":"/89137fcc-933a-40e0-855f-b0c8c254793f/raw/.sage/temp/project-89137fcc-933a-40e0-855f-b0c8c254793f/692/tmp_y_sqikrf.webm"},"once":false}︡{"done":true}









