#!/bin/bash
cd ./cluto-2.1.2
cd ./Linux-i686
./vcluster -clmethod=rb -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=dist -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_dist.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=jacc -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_jacc.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=dist -nnbr=30 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_dist_n30.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=dist -nnbr=50 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_dist_n50.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=dist -nnbr=60 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_dist_n60.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=jacc -nnbr=30 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_jacc_n30.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=jacc -nnbr=50 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_jacc_n30.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -sim=jacc -nnbr=60 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_jacc_n30.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -crfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -crfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -crfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=i2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_i2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=i2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_i2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -crfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -crfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -crfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -crfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -crfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -crfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -crfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -crfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -crfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -crfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -crfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -crfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=wslink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_wslink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=wslink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_wslink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -crfun=wslink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_wslink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -crfun=wslink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_wslink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -crfun=wslink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_wslink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=agglo -crfun=wclink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_agglo_wclink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=bagglo -crfun=wclink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_bagglo_wclink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -crfun=wclink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_wclink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -crfun=wclink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_wclink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -crfun=wclink -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_wclink.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_agg168.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30_agg168.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50_agg168.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60_agg168.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -agglocrfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -agglocrfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -agglocrfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -agglofrom=168  -agglocrfun=i1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_graph_agg168i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30  -agglocrfun=i1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30_agg168i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -agglocrfun=i1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50_agg168i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60  -agglocrfun=i1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60_agg168i1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -agglocrfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -agglocrfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -agglocrfun=e1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168e1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -agglofrom=168  -agglocrfun=e2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_agg168e2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30  -agglocrfun=e2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30_agg168e2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -agglocrfun=e2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50_agg168e2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60  -agglocrfun=e2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60_agg168e2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -agglocrfun=e2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168e2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -agglocrfun=e2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168e2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -agglocrfun=e2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168e2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -agglofrom=168  -agglocrfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_agg168g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30  -agglocrfun=g1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30_agg168g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -agglocrfun=g1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50_agg168g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60  -agglocrfun=g1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60_agg168g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -agglocrfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -agglocrfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -agglocrfun=g1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168g1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -agglofrom=168  -agglocrfun=g2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_agg168g2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30  -agglocrfun=g2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30_agg168g2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -agglocrfun=g2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50_agg168g2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60  -agglocrfun=g2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60_agg168g2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -agglocrfun=g2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168g2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -agglocrfun=g2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168g2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -agglocrfun=g2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168g2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -agglofrom=168  -agglocrfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_agg168h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30  -agglocrfun=h2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30_agg168h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -agglocrfun=h2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50_agg168h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60  -agglocrfun=h2 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60_agg168h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -agglocrfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -agglocrfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -agglocrfun=h2 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168h2.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rb -agglofrom=168 -agglocrfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rb_agg168h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=rbr -agglofrom=168 -agglocrfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_rbr_agg168h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=direct -agglofrom=168 -agglocrfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_direct_agg168h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -agglofrom=168  -agglocrfun=h1 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_agg168h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=30  -agglocrfun=h1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n30_agg168h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=50 -agglocrfun=h1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n50_agg168h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
./vcluster -clmethod=graph -nnbr=60  -agglocrfun=h1 -agglofrom=168 -rlabelfile=./files/mkyu/sharp_phys_colloc_300.rows -clustfile=./files/mkyu/clust_colloc_300_112/sharp_phys_colloc_300_graph_n60_agg168h1.112 ./files/mkyu/sharp_phys_colloc_300.dm 112
