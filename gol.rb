min=0
max=16



 a=[['','','','','','','','','','','','','','','','',''],
  ['','','','','','','','0','0','0','','','','','','',''],
  ['','','','','','','','','','','','','','','','',''],
  ['','','','','','','','0','0','0','','','','','','',''],
  ['','','','','','','','','0','','','','','','','',''],
  ['','','','','','','','','0','','','','','','','',''],
  ['','','','','','','','','','','','','','','','',''],
  ['','','','','0','','','','0','','','','0','','','',''],
  ['','','','0','0','0','','0','0','0','','0','0','0','','',''],
  ['','','','','0','','','','0','','','','0','','','',''],
  ['','','','','','','','','','','','','','','','',''],
  ['','','','','','','','','0','','','','','','','',''],
  ['','','','','','','','','0','','','','','','','',''],
  ['','','','','','','','0','0','0','','','','','','',''],
  ['','','','','','','','','','','','','','','','',''],
  ['','','','','','','','0','0','0','','','','','','',''],
  ['','','','','','','','','','','','','','','','',''],]

  system("clear")
for j in 1..10000000000000


 new_a=Array.new(17) { Array.new(17) { |i| i=''  }  }

sleep(1.0)
system("clear")

0.upto(a.length-1) do |i|
  0.upto(a.length-1) do |j|
    count=0;

# ------NEIGHBOUR CONDITIONS i=max j=min---------
    if i==max && j==min

      if a[i-1][j] == '0'
        count+=1
      end
      if a[i-1][j+1] == '0'
        count+=1
      end

      if a[i][j+1] == '0'
        count+=1
      end

#------NEIGHBOUR CONDITIONS i=max j=max---------
    elsif i==max && j==max
      if a[i-1][j-1]=='0'
        count+=1
      end
      if a[i-1][j] == '0'
        count+=1
      end
      if a[i][j-1] == '0'
        count+=1
      end


# ------NEIGHBOUR CONDITIONS i=max---------
    elsif i==max && j!=min && j!=max
      if a[i-1][j-1]=='0'
        count+=1
      end
      if a[i-1][j]=='0'
        count+=1
      end
      if a[i-1][j+1]=='0'
        count+=1
      end
      if a[i][j-1]=='0'
        count+=1
      end
      if a[i][j+1]=='0'
        count+=1
      end

# ------NEIGHBOUR CONDITIONS i=min j=min---------
    elsif i==min && j==min
      if a[i][j+1]=='0'
        count+=1
      end
      if a[i+1][j]=='0'
        count+=1
      end
      if a[i+1][j+1]=='0'
        count+=1
      end

#------NEIGHBOUR CONDITIONS i=min j=max---------
    elsif i==min && j==max

      if a[i][j-1]=='0'
        count+=1
      end

      if a[i+1][j-1]=='0'
        count+=1
      end
      if a[i+1][j]=='0'
        count+=1
      end



# ------NEIGHBOUR CONDITIONS i=min---------
    elsif i==min && j!=min && j!=max
      if a[i][j-1]=='0'
        count+=1
      end
      if a[i][j+1]=='0'
        count+=1
      end
      if a[i+1][j-1]=='0'
        count+=1
      end
      if a[i+1][j]=='0'
        count+=1
      end
      if a[i+1][j+1]=='0'
        count+=1
      end

# ------NEIGHBOUR CONDITIONS j=min---------
    elsif j==min && i!=min && i!=max
      if a[i-1][j]=='0'
        count+=1
      end
      if a[i-1][j+1]=='0'
        count+=1
      end

      if a[i][j+1]=='0'
        count+=1
      end

      if a[i+1][j]=='0'
        count+=1
      end
      if a[i+1][j+1]=='0'
        count+=1
      end

# ------NEIGHBOUR CONDITIONS j=max---------
    elsif j==max && i!=min && i!=max
      if a[i-1][j-1]=='0'
        count+=1
      end
      if a[i-1][j]=='0'
        count+=1
      end

      if a[i][j-1]=='0'
        count+=1
      end

      if a[i+1][j-1]=='0'
        count+=1
      end
      if a[i+1][j]=='0'
        count+=1
      end


#------NEIGHBOUR CONDITIONS REGULAR---------
    else
      if a[i-1][j-1]=='0'
        count+=1
      end
      if a[i-1][j]=='0'
        count+=1
      end
      if a[i-1][j+1]=='0'
        count+=1
      end
      if a[i][j-1]=='0'
        count+=1
      end
      if a[i][j+1]=='0'
        count+=1
      end
      if a[i+1][j-1]=='0'
        count+=1
      end
      if a[i+1][j]=='0'
        count+=1
      end
      if a[i+1][j+1]=='0'
        count+=1
      end
    end
# --------RULES-------------------------
    # puts count
    if a[i][j]==''
      if count==3
        new_a[i][j]='0'
      end

    elsif a[i][j]=='0'
      if
        count<2 || count>3
        new_a[i][j]=''
      end
      if count==2 || count==3
        new_a[i][j]=a[i][j]
      end
    end
  end
end

0.upto(new_a.length-1) do |i|
  0.upto(new_a.length-1) do |j|
    print a[i][j]+" "
  end
  puts "\n"
end

a=new_a


end
