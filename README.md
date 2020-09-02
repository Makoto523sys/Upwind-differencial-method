# Upwind-differencial-method

This program will solve Hyperbole PDE.
In this case, I consider below conditions.

1. phase velocity:
  <img src = "https://latex.codecogs.com/gif.latex?c&space;=&space;1" />
  
2. space-time domain:
  <img src = "https://latex.codecogs.com/gif.latex?x&space;=&space;[0,&space;1],t&space;=&space;[0,&space;1.2]"/>
  
3. boundary condition:
  <img src = "https://latex.codecogs.com/gif.latex?u(t,&space;0)&space;=&space;u(t,&space;1)&space;=&space;0" />
  
4. initial condition:
  <img src = "https://latex.codecogs.com/gif.latex?u(0,&space;x)&space;=&space;\begin{cases}&space;(1/2)\cos{8\pi(x-1/2)}&space;&plus;&space;1/2\&space;(3/8&space;\le&space;x&space;\le&space;5/8)\\&space;0\&space;(others)&space;\end{cases}&space;\\&space;\frac{\partial&space;u}{\partial&space;x}(0,&space;x)&space;=&space;0\&space;(0&space;\le&space;x&space;\le&space;1)" />

Hyperbole PDE(now, it means Wave Equation) can turn into advectional equation like below.

<img src = "https://latex.codecogs.com/gif.latex?\frac{\partial^2&space;u}{\partial&space;t^2}&space;-&space;c^2\frac{\partial^2&space;u}{\partial&space;x^2}&space;=&space;0&space;\Leftrightarrow&space;\left(\frac{\partial}{\partial&space;t}&space;-&space;c\frac{\partial}{\partial&space;x}&space;\right)\left(\frac{\partial}{\partial&space;t}&space;&plus;&space;c\frac{\partial}{\partial&space;x}&space;\right)u&space;=&space;0" />

<img src = "https://latex.codecogs.com/gif.latex?\begin{align*}&space;\frac{\partial&space;u}{\partial&space;t}&space;&=&space;c\frac{\partial&space;u}{\partial&space;x}\&space;(recessionary\&space;wave)\\&space;\frac{\partial&space;u}{\partial&space;t}&space;&=&space;-c\frac{\partial&space;u}{\partial&space;x}\&space;(progressive\&space;wave)&space;\end{align*}" />
