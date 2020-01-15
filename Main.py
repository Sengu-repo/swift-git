import os
  for i in range(366):
      d = str(i) + ' days ago'
      with open('README.md','a') as file:
           file.write(d+'\n')
      os.system('git add README.md')
      os.system('git commit --date="'+d+'" -m "commit"')
      
      
 os.system('git push -u origin master')
 
