##############################
# Duck's system
points<-list()

pointCounter1<-function(hook1, hook2, hook3){
  hook1*1+hook2*1+hook3*2
}

pointCounter1(4, 4, 4) #gives proper output, good

pointCounter2<-function(hook1, hook2, hook3, bleed){
  killer_points<-hook1*1+hook2*1+hook3*2+bleed*1
}

pointCounter2<-function(hook1, hook2, hook3, bleed){
  killer_points<-hook1*1+hook2*1+hook3*2+bleed*1
  killer_points
}

pointCounter2(4,4,4,0)

pointCounter2(4,4,3,1)


##################################
# My system
# Killers:
# 1st hook is 3 pts, 2nd hook is 2pts, 3rd hook is 2pts, a bleedout is 1pt
# Total points possible: 7*4=28pts

# Survivors:
# Completing a gen is 1 pts, unhooking a survivor is 1pts, escaping is 3pts
# Total: 5+12+8=25pts

pointCounter3<-function(hook1, hook2, hook3, bleed, gens, unhooks, escaping){
  killer_points<-hook1*3+hook2*2+hook3*3+bleed*1
  survivor_points<-gens*1+unhooks*1+escaping*3
  print(killer_points)
  print(survivor_points)
  if(killer_points>survivor_points){
    print("Killer wins!")} else if (killer_points<survivor_points){
      print("Survivors win!")} else {
        print("Fuck it's a tie")}

}

pointCounter3(4,2,1,1,5,6,2)
