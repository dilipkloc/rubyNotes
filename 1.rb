def order_weight(strng)
    v = strng.split(/\s/)
    ha = []
    so = []
    v.each do |i|
        j = i.split("")
        sum = 0
        for k in j
            sum+=k.to_i
        end
        ha.push(sum)
    end
    # p ha
    # p v
    s = []
    s1=[]
    while ha.length > 0
        # minVar = v[ha.index(ha.min.to_s)]
        minVar = ha.index(ha.min)
        # p minVar
        # break
        s.push(v[minVar])
        s1.push(ha[minVar])
        v.delete_at(minVar)
        ha.delete_at(minVar)
    end
    # ret = ""
    # for i in s
    #     ret=ret+i.to_s+" "
    # end
    # ret=ret.strip()
    # p s
    # p s1

    pre = s1[0]
    i = 0
    ret = ""
    one = 1
    j = []
    j.push(s[0].to_s)
    while i < s1.length
        i+=1
        if one != 1
            j=[]
        end
        one = 2
        while(pre == s1[i])
            j.push(s[i].to_s)
            i+=1
        end
        if j.length > 0
            j=j.sort
        else
            j.push(s1[i])    
        end
        pre = s1[i]
        p j
        # for k in j
        #     ret=ret+k+" "
        # end
    end
    # ret=ret.strip()
end
# p order_weight("103 123 4444 99 2000")
p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")