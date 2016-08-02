using Hadamard
using Base.Test

H8 = [   1     1     1     1     1     1     1     1
         1     1     1     1    -1    -1    -1    -1
         1     1    -1    -1    -1    -1     1     1
         1     1    -1    -1     1     1    -1    -1
         1    -1    -1     1     1    -1    -1     1
         1    -1    -1     1    -1     1     1    -1
         1    -1     1    -1    -1     1    -1     1
         1    -1     1    -1     1    -1     1    -1  ]

H8n = [  1     1     1     1     1     1     1     1
         1    -1     1    -1     1    -1     1    -1
         1     1    -1    -1     1     1    -1    -1
         1    -1    -1     1     1    -1    -1     1
         1     1     1     1    -1    -1    -1    -1
         1    -1     1    -1    -1     1    -1     1
         1     1    -1    -1    -1    -1     1     1
         1    -1    -1     1    -1     1     1    -1  ]

H8d = [  1     1     1     1     1     1     1     1
         1     1     1     1    -1    -1    -1    -1
         1     1    -1    -1     1     1    -1    -1
         1     1    -1    -1    -1    -1     1     1
         1    -1     1    -1     1    -1     1    -1
         1    -1     1    -1    -1     1    -1     1
         1    -1    -1     1     1    -1    -1     1
         1    -1    -1     1    -1     1     1    -1  ]

ieye(n) = eye(Int8, n)

@test ifwht(eye(8),1) == H8
@test ifwht(eye(8),2)' == H8
@test ifwht_natural(eye(8),1) == H8n
@test ifwht_natural(eye(8),2)' == H8n
@test ifwht_dyadic(eye(8),1) == H8d
@test ifwht_dyadic(eye(8),2)' == H8d

@test ifwht(ieye(8),1) == H8
@test ifwht(ieye(8),2)' == H8
@test ifwht_natural(ieye(8),1) == H8n
@test ifwht_natural(ieye(8),2)' == H8n
@test ifwht_dyadic(ieye(8),1) == H8d
@test ifwht_dyadic(ieye(8),2)' == H8d

H32 = [  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 1 1 1
 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1
 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1
 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 1 1 1 1 -1 -1 -1 -1
 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1
 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1
 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1
 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1
 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1
 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1
 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1
 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1
 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1
 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1
 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1
 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1
 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1
 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1
 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1
 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 1 -1 -1 1 -1 1 1 -1
 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1
 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1
 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1
 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1
 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1
 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1
 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1
 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 1 -1 1 -1 1 -1 1 -1
 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1
 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 1 -1 ]

@test ifwht(eye(32),1) == H32
@test ifwht(eye(32),2)' == H32

@test ifwht(ieye(32),1) == H32
@test ifwht(ieye(32),2)' == H32

X = reshape(sin([1:1024*32;]), 1024,32);
norminf(A) = maximum(abs(A))

for f in (:fwht, :fwht_natural, :fwht_dyadic)
    fi = Symbol(string("i", f))
    @eval begin
        @test norminf(X - $fi($f(X))) < 1e-14
        @test norminf(X - $fi($f(X,1),1)) < 1e-14
        @test norminf(X - $fi($f(X,2),2)) < 1e-14
        @test norminf($f($f(X,1),2) - $f(X)) < 1e-14
        @test norminf($f(X',1)' - $f(X,2)) < 1e-14
    end
end

@test hadamard(8) == H8n
@test ifwht_natural(eye(32), 1) == hadamard(32)
@test ifwht_natural(eye(2), 1) == hadamard(2)

print("Checking unitarity of hadamard(n): ")
for i = 4:4:1000
    H = try
        convert(Matrix{Int}, hadamard(i))
    catch
        Int[]
    end
    if !isempty(H)
        print(i, ", ")
        @test norm(H'*H - size(H,1)*eye(H), 1) == 0
    end
end
println(".\nSuccess!")
