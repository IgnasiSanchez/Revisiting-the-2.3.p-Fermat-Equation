//This code verifies the claims in Section 2. Proof of Theorem 1.2.

load "IntegralFrobeniusMatrix.m";

// This function checks that p divides the order of Frobenius.
function CheckpdivFrob(E,l,p)
    FF:=GF(l);
    E:=ChangeRing(E,FF);
    G:=GL(2,p);
    F:=G!IntegralFrobenius(E);
    if Order(F) mod p eq 0 then
        return true;
    else
        return false;
    end if;
end function;

//This function checks that for all primes q dividing \Delta_l (q/p) is not -1.
function Checkcond4(D, p)
    primeFactors := PrimeDivisors(D);
    for q in primeFactors do
        if LegendreSymbol(q, p) eq -1 then
            return false;
        end if;
    end for;
    return true;
end function;

EC:=["864a1", "864b1", "864c1"]; //Cremona Labels of the elliptic curves E from equation (4.6.).

for label in EC do
    print "Elliptic curve with Cremona label", label, "admits the following exceptional triples.";
    E:=EllipticCurve(label);
        for p in PrimesInInterval(5,1000) do
            if p mod 24 eq 19 then
                for l in PrimesInInterval(5,Floor(p^2/16)) do //Theorem 1.3. implies that exceptional triples must satisfy l<p^2/16.
                    a:=TraceOfFrobenius(E,l);
                    D:=a^2-4*l;
                    if IsSquare(-p*D) and l ne p and CheckpdivFrob(E,l,p) and Checkcond4(D, p) then
                        print "(E, l, p)=(", label,l,p,") is an exceptional triple."; 
                    end if;
                end for;
            end if;
        end for;
end for;
