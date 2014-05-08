class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def norm(self):
        """ 
        This method returns the norm of the given GaussianRational number.
        
        
        Example: 
            sage: r = GaussianRational(2/3, 1/3)
            sage: r.norm()
            
            Will return 5/9
        """
        return self.x**2 + self.y**2

