%Base de Datos, Proyecto Prolog
%Aulas
aula(wwe65, 45, 0).
aula(pwk06, 50, 3).
aula(gdv15, 30, 3).
aula(chr39, 55, 15).
aula(xaj47, 45, 6).
aula(zeu23, 65, 15).
aula(rqn27, 10, 0).
aula(hmv48, 20, 3).
aula(yey51, 55, 4).
aula(aee28, 20, 4).
aula(mgo15, 40, 12).
aula(nvx90, 45, 13).
aula(yoj70, 35, 5).
aula(rkt71, 45, 0).
aula(rle23, 45, 5).
aula(yyw19, 20, 4).
aula(pbg80, 20, 0).
aula(iuf96, 30, 7).
aula(zho78, 65, 19).
aula(tjh49, 55, 9).
aula(efm35, 55, 14).
aula(ekz06, 65, 20).
aula(sod19, 30, 2).
aula(gwp04, 70, 10).
aula(xck80, 40, 9).
aula(lsg35, 20, 2).
aula(wsu95, 20, 2).
aula(dss10, 30, 3).
aula(ymu31, 30, 2).
aula(rwf09, 65, 20).
aula(vfz77, 25, 7).
aula(mhf23, 20, 6).
aula(irn19, 20, 6).
aula(zpo58, 15, 0).
aula(sop42, 70, 17).
aula(npn43, 70, 19).
aula(end65, 70, 5).
aula(xyj22, 25, 7).
aula(iry78, 50, 16).
aula(iph96, 15, 5).
aula(lyp79, 45, 15).
aula(rdm72, 55, 9).
aula(liu77, 35, 6).
aula(phw58, 35, 3).
aula(vae02, 20, 0).
aula(uwz98, 10, 1).
aula(nzl42, 10, 0).
aula(zsk10, 60, 12).
aula(job17, 30, 3).
aula(zhe56, 25, 5).
aula(oci08, 35, 10).
aula(zqq92, 35, 1).
aula(zai85, 40, 7).
aula(qjw45, 45, 8).
aula(psm50, 45, 4).
aula(pis21, 15, 5).
aula(xoa19, 40, 3).
aula(nfh34, 70, 21).
aula(dbj60, 30, 6).
aula(rvs50, 25, 6).
aula(qyd95, 25, 4).
aula(czp61, 25, 6).
aula(wty36, 40, 10).
aula(efk22, 30, 6).
aula(ovm92, 35, 2).
aula(wia17, 10, 1).
aula(lkv19, 10, 1).
estudiante(2000100001, 1, [math101, phys201, ec201]).
estudiante(2000100002, 1, [math101, phys201, hist301]).
estudiante(2000100003, 1, [math101, ec201, hist301]).
estudiante(2000100004, 1, [math101, phys201, ec201, hist301]).
estudiante(2000100007, 0, [ec201, phys201]).
estudiante(2000100015, 0, [ec201, hist301]).
estudiante(2000100016, 0, [cmpe150, hist301]).
estudiante(2000100017, 0, []).
estudiante(2000100008, 0, [math101, phys201]).
estudiante(2000100009, 1, [phys201, ec201]).
estudiante(2000100010, 0, [cmpe150, math101]).
estudiante(2000100011, 0, [cmpe150, hist301]).
estudiante(2000100012, 1, [math101, phys201]).
estudiante(2002100009, 0, [math101, ec201, hist301]).
estudiante(2002100071, 0, [phys201, ec201, hist301]).
estudiante(2002100053, 0, [cmpe150, ec201]).
estudiante(2002100040, 1, [math101, hist301]).
estudiante(2002100032, 0, [phys201, ec201]).
estudiante(2002100010, 0, [cmpe150]).
estudiante(2002103010, 1, []).

existe(X, [X|T1]).
existe(X,[H1|T1]):- 
    existe(X,T1).

estudiaMateria(X,Y):-
    estudiante(Y,_,Z),
    existe(X,Z).

lista_estudiantes(IdCurso,Resultado):- 
    findall(Estudiante, estudiaMateria(IdCurso,Estudiante), Resultado).
