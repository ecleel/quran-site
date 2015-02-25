module Jekyll
  class SoraPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      
    end
  end
  
  class SorahPageGenerator < Generator
    def generate(site)
      soras = site.data['ayah']['records'].group_by {|r| r[1]}
    end
  end
  
  class AyahPageGenerator < Generator
    def generate(site)
      
    end
  end
end