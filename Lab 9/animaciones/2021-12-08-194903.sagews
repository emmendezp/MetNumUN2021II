︠68fdd9a8-cf0e-4681-b038-8c3b70f60918s︠
# Interact Taylor Series of $$f(x) = sin(x)$$
# Explanatory example: Taylor Series – wiki.sagemath.org/interact https://wiki.sagemath.org/interact
x   = SR.var('x')
x0  = 0
f   = sin(x)
p   = plot(f, -20, 20, thickness=2)
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))

@interact
def _(order=slider([0 .. 12])):
  ft = f.taylor(x, x0, order)
  pt = plot(ft, -20, 20, color='green', thickness=2)
  pretty_print(html(r'$f(x)\;=\;%s$' % latex(f)))
  pretty_print(html(r'$\hat{f}(x;%s)\;=\;%s+\mathcal{O}(x^{%s})$' % (x0, latex(ft), order+1)))
  show(dot + p + pt, ymin=-1, ymax=10)

# Animate  Taylor Series of $$f(x) = sin(x)$$
# MCS 320: Introduction to Symbolic Computation - Jan Verschelde, Mathematics, U. Illinois at Chicago  –
# http://homepages.math.uic.edu/~jan/mcs320/mcs320notes/lec27.html#
x   = SR.var('x')
x0  = 0
f   = sin(x)
p   = plot(f, -pi, pi, thickness=2,legend_label='f(x) = sin(x)')
dot = point((x0, f(x=x0)), pointsize=80, rgbcolor=(1, 0, 0))
ptaylor = [plot(f.taylor(x, x0, order), -pi,pi, color='green', thickness=2, legend_label= "Taylor " + str(order) +": "+ str(f.taylor(x, x0, order))) for order in range(5)]

frames = [p+dot+ptaylor[int(order/12)] for order in range(60)]
a = animate(frames, ymin=-10, ymax=10)
a.show()
a.save('sin(x)_taylor_animation_1.gif')
︡97fa2711-1668-402b-9693-875dd99c21fc︡{"interact":{"controls":[{"animate":true,"control_type":"slider","default":0,"display_value":true,"label":"order","vals":["0","1","2","3","4","5","6","7","8","9","10","11","12"],"var":"order","width":null}],"flicker":false,"id":"7973f696-9831-414e-92be-83a7904510b9","layout":[[["order",12,null]],[["",12,null]]],"style":"None"}}︡{"file":{"filename":"/home/user/.sage/temp/project-89137fcc-933a-40e0-855f-b0c8c254793f/692/tmp_wm6qriuq.webm","show":true,"text":null,"url":"/89137fcc-933a-40e0-855f-b0c8c254793f/raw/.sage/temp/project-89137fcc-933a-40e0-855f-b0c8c254793f/692/tmp_wm6qriuq.webm"},"once":false}︡{"done":true}









