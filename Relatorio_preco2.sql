SELECT * FROM consinco.map_familia a;
SELECT * FROM consinco.map_produto;
SELECT * FROM consinco.map_famdivcateg;
SELECT * FROM consinco.map_categoria;



SELECT a.seqproduto, b.desccompleta,a.qtdembalagem, a.precobasenormal, e.caminhocompleto
       from consinco.mrl_prodempseg a
            join consinco.map_produto              b ON a.seqproduto = b.seqproduto
            join consinco.map_familia              c on b.seqfamilia = c.seqfamilia
            join consinco.map_famdivcateg          d on c.seqfamilia = d.seqfamilia
            join consinco.map_categoria            e on e.seqcategoria = d.seqcategoria
       where a.nrosegmento = 2 and 
             a.statusvenda = 'A' and
             a.qtdembalagem <> 1 and
             d.status = 'A' and
             e.nivelhierarquia = 4 and
             e.actfamilia = 'S' and
             e.statuscategor = 'A'
        order by 2;
