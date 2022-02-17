Supplemental Material
================
Glenn Williams
2021/09/15 (last updated: 2022/02/17)

# Full Parameter Estimates

Full fixed effect parameter estimates are included for all models below.
Note that these are presented on the log scale. In the paper only the
beta terms are included along with Bayes factors evaluating evidence in
support of the point-null hypothesis relative to the alternative
hypothesis (i.e. of a non-zero effect) using the Savage-Dickey density
ratio, but not with intercepts or thresholds.

Cumulative models assume that responses come from categoristion of a
latent continuous variable. Thus, for the cumulative models there is not
a single intercept but instead the model output reports several
“intercepts” which are thresholds that partition the latent continuous
variable into response categories. Holding all other parameters
constant, these give the cumulative log-odds of responses being within a
given threshold. (To transform these into probabilities, the inverse
logit should be applied to any given threshold.) As with intercepts in
typical regression modelling, these are often not the focus of the
research question. Thus, intercepts and thresholds are omitted from the
main text but are included in full here for completeness.

Crucially, the thresholds in the cumulative models reported here are
dictated by the unique scores on the outcome. In the depression,
anxiety, and stress models each “intercept” typically represents scores
from 0 to 42 in increments of 2 as the scale requires individual scores
to be summed and multiplied by 2. However, in the short loneliness scale
used in study 1, the thresholds represent scores from 3 to 9 in
increments of 1. For the longer loneliness scale used in studies 2 and
3, the thresholds represent scores from 0 to 11 in increments of 1. In
cases where the thresholds do not match the number of unique increments
on the scale this is due to some unique values not occurring in the data
set.

As the tables are explained fully in text, no further interpretation is
given for each table.

## Study 1

### Main Model

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
term
</th>
<th style="text-align:right;">
Estimate
</th>
<th style="text-align:right;">
Est.Error
</th>
<th style="text-align:right;">
l-95% CI
</th>
<th style="text-align:right;">
u-95% CI
</th>
<th style="text-align:right;">
Rhat
</th>
<th style="text-align:right;">
Bulk_ESS
</th>
<th style="text-align:right;">
Tail_ESS
</th>
</tr>
</thead>
<tbody>
<tr grouplength="24">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Depression</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-4.446
</td>
<td style="text-align:right;">
0.364
</td>
<td style="text-align:right;">
-5.173
</td>
<td style="text-align:right;">
-3.743
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2708
</td>
<td style="text-align:right;">
4429
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-3.193
</td>
<td style="text-align:right;">
0.305
</td>
<td style="text-align:right;">
-3.811
</td>
<td style="text-align:right;">
-2.607
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2786
</td>
<td style="text-align:right;">
4933
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-2.503
</td>
<td style="text-align:right;">
0.280
</td>
<td style="text-align:right;">
-3.081
</td>
<td style="text-align:right;">
-1.976
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2785
</td>
<td style="text-align:right;">
4774
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-2.010
</td>
<td style="text-align:right;">
0.268
</td>
<td style="text-align:right;">
-2.552
</td>
<td style="text-align:right;">
-1.493
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2728
</td>
<td style="text-align:right;">
4963
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-1.284
</td>
<td style="text-align:right;">
0.253
</td>
<td style="text-align:right;">
-1.788
</td>
<td style="text-align:right;">
-0.799
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2682
</td>
<td style="text-align:right;">
4818
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-0.583
</td>
<td style="text-align:right;">
0.244
</td>
<td style="text-align:right;">
-1.061
</td>
<td style="text-align:right;">
-0.109
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2829
</td>
<td style="text-align:right;">
5070
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
-0.117
</td>
<td style="text-align:right;">
0.243
</td>
<td style="text-align:right;">
-0.584
</td>
<td style="text-align:right;">
0.362
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2968
</td>
<td style="text-align:right;">
5409
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
0.395
</td>
<td style="text-align:right;">
0.243
</td>
<td style="text-align:right;">
-0.071
</td>
<td style="text-align:right;">
0.880
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2960
</td>
<td style="text-align:right;">
5350
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
0.915
</td>
<td style="text-align:right;">
0.246
</td>
<td style="text-align:right;">
0.435
</td>
<td style="text-align:right;">
1.402
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3048
</td>
<td style="text-align:right;">
5314
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
1.372
</td>
<td style="text-align:right;">
0.254
</td>
<td style="text-align:right;">
0.882
</td>
<td style="text-align:right;">
1.878
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3154
</td>
<td style="text-align:right;">
4487
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
1.744
</td>
<td style="text-align:right;">
0.259
</td>
<td style="text-align:right;">
1.254
</td>
<td style="text-align:right;">
2.262
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3179
</td>
<td style="text-align:right;">
5043
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
2.193
</td>
<td style="text-align:right;">
0.272
</td>
<td style="text-align:right;">
1.679
</td>
<td style="text-align:right;">
2.747
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3253
</td>
<td style="text-align:right;">
5292
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
2.519
</td>
<td style="text-align:right;">
0.280
</td>
<td style="text-align:right;">
1.996
</td>
<td style="text-align:right;">
3.093
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3240
</td>
<td style="text-align:right;">
5276
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
2.756
</td>
<td style="text-align:right;">
0.288
</td>
<td style="text-align:right;">
2.206
</td>
<td style="text-align:right;">
3.339
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3265
</td>
<td style="text-align:right;">
5019
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
3.202
</td>
<td style="text-align:right;">
0.305
</td>
<td style="text-align:right;">
2.619
</td>
<td style="text-align:right;">
3.829
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3412
</td>
<td style="text-align:right;">
5071
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
3.926
</td>
<td style="text-align:right;">
0.332
</td>
<td style="text-align:right;">
3.293
</td>
<td style="text-align:right;">
4.600
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3625
</td>
<td style="text-align:right;">
5399
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
4.304
</td>
<td style="text-align:right;">
0.350
</td>
<td style="text-align:right;">
3.642
</td>
<td style="text-align:right;">
5.009
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3856
</td>
<td style="text-align:right;">
5793
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
4.824
</td>
<td style="text-align:right;">
0.375
</td>
<td style="text-align:right;">
4.095
</td>
<td style="text-align:right;">
5.572
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3939
</td>
<td style="text-align:right;">
5591
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
5.376
</td>
<td style="text-align:right;">
0.414
</td>
<td style="text-align:right;">
4.583
</td>
<td style="text-align:right;">
6.207
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4131
</td>
<td style="text-align:right;">
5784
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
5.972
</td>
<td style="text-align:right;">
0.458
</td>
<td style="text-align:right;">
5.096
</td>
<td style="text-align:right;">
6.898
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4401
</td>
<td style="text-align:right;">
6349
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[21\]
</td>
<td style="text-align:right;">
6.867
</td>
<td style="text-align:right;">
0.546
</td>
<td style="text-align:right;">
5.838
</td>
<td style="text-align:right;">
7.998
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5002
</td>
<td style="text-align:right;">
6385
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.451
</td>
<td style="text-align:right;">
0.099
</td>
<td style="text-align:right;">
0.257
</td>
<td style="text-align:right;">
0.645
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7956
</td>
<td style="text-align:right;">
6747
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.360
</td>
<td style="text-align:right;">
0.173
</td>
<td style="text-align:right;">
0.021
</td>
<td style="text-align:right;">
0.700
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4170
</td>
<td style="text-align:right;">
5539
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
-0.072
</td>
<td style="text-align:right;">
0.106
</td>
<td style="text-align:right;">
-0.275
</td>
<td style="text-align:right;">
0.135
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10559
</td>
<td style="text-align:right;">
7063
</td>
</tr>
<tr grouplength="21">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Anxiety</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-3.560
</td>
<td style="text-align:right;">
0.353
</td>
<td style="text-align:right;">
-4.273
</td>
<td style="text-align:right;">
-2.905
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2116
</td>
<td style="text-align:right;">
3968
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-1.703
</td>
<td style="text-align:right;">
0.284
</td>
<td style="text-align:right;">
-2.277
</td>
<td style="text-align:right;">
-1.171
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2233
</td>
<td style="text-align:right;">
4186
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-0.687
</td>
<td style="text-align:right;">
0.263
</td>
<td style="text-align:right;">
-1.204
</td>
<td style="text-align:right;">
-0.181
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2483
</td>
<td style="text-align:right;">
4792
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-0.051
</td>
<td style="text-align:right;">
0.260
</td>
<td style="text-align:right;">
-0.561
</td>
<td style="text-align:right;">
0.463
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2453
</td>
<td style="text-align:right;">
4517
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
0.871
</td>
<td style="text-align:right;">
0.264
</td>
<td style="text-align:right;">
0.351
</td>
<td style="text-align:right;">
1.389
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2604
</td>
<td style="text-align:right;">
4148
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
1.490
</td>
<td style="text-align:right;">
0.274
</td>
<td style="text-align:right;">
0.973
</td>
<td style="text-align:right;">
2.038
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2676
</td>
<td style="text-align:right;">
4885
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
2.152
</td>
<td style="text-align:right;">
0.289
</td>
<td style="text-align:right;">
1.604
</td>
<td style="text-align:right;">
2.731
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2755
</td>
<td style="text-align:right;">
4799
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
2.989
</td>
<td style="text-align:right;">
0.318
</td>
<td style="text-align:right;">
2.390
</td>
<td style="text-align:right;">
3.644
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3003
</td>
<td style="text-align:right;">
4837
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
3.752
</td>
<td style="text-align:right;">
0.350
</td>
<td style="text-align:right;">
3.096
</td>
<td style="text-align:right;">
4.461
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3230
</td>
<td style="text-align:right;">
5122
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
4.500
</td>
<td style="text-align:right;">
0.387
</td>
<td style="text-align:right;">
3.761
</td>
<td style="text-align:right;">
5.276
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3600
</td>
<td style="text-align:right;">
5493
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
5.393
</td>
<td style="text-align:right;">
0.436
</td>
<td style="text-align:right;">
4.564
</td>
<td style="text-align:right;">
6.285
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4008
</td>
<td style="text-align:right;">
5500
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
5.901
</td>
<td style="text-align:right;">
0.465
</td>
<td style="text-align:right;">
5.042
</td>
<td style="text-align:right;">
6.851
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4271
</td>
<td style="text-align:right;">
5758
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
6.290
</td>
<td style="text-align:right;">
0.494
</td>
<td style="text-align:right;">
5.363
</td>
<td style="text-align:right;">
7.305
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4476
</td>
<td style="text-align:right;">
5427
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
6.906
</td>
<td style="text-align:right;">
0.554
</td>
<td style="text-align:right;">
5.873
</td>
<td style="text-align:right;">
8.036
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4912
</td>
<td style="text-align:right;">
5937
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
7.647
</td>
<td style="text-align:right;">
0.635
</td>
<td style="text-align:right;">
6.481
</td>
<td style="text-align:right;">
8.924
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5464
</td>
<td style="text-align:right;">
6358
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
8.560
</td>
<td style="text-align:right;">
0.780
</td>
<td style="text-align:right;">
7.153
</td>
<td style="text-align:right;">
10.206
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6382
</td>
<td style="text-align:right;">
5739
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
9.278
</td>
<td style="text-align:right;">
0.942
</td>
<td style="text-align:right;">
7.628
</td>
<td style="text-align:right;">
11.318
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6879
</td>
<td style="text-align:right;">
5538
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
10.622
</td>
<td style="text-align:right;">
1.355
</td>
<td style="text-align:right;">
8.362
</td>
<td style="text-align:right;">
13.693
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9188
</td>
<td style="text-align:right;">
6048
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.191
</td>
<td style="text-align:right;">
0.099
</td>
<td style="text-align:right;">
-0.002
</td>
<td style="text-align:right;">
0.387
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8096
</td>
<td style="text-align:right;">
6130
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.333
</td>
<td style="text-align:right;">
0.174
</td>
<td style="text-align:right;">
0.001
</td>
<td style="text-align:right;">
0.683
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3937
</td>
<td style="text-align:right;">
5259
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
-0.081
</td>
<td style="text-align:right;">
0.107
</td>
<td style="text-align:right;">
-0.295
</td>
<td style="text-align:right;">
0.131
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10132
</td>
<td style="text-align:right;">
6493
</td>
</tr>
<tr grouplength="24">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Stress</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-4.847
</td>
<td style="text-align:right;">
0.389
</td>
<td style="text-align:right;">
-5.655
</td>
<td style="text-align:right;">
-4.111
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2445
</td>
<td style="text-align:right;">
3864
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-3.920
</td>
<td style="text-align:right;">
0.336
</td>
<td style="text-align:right;">
-4.621
</td>
<td style="text-align:right;">
-3.284
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2459
</td>
<td style="text-align:right;">
4118
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-3.132
</td>
<td style="text-align:right;">
0.295
</td>
<td style="text-align:right;">
-3.739
</td>
<td style="text-align:right;">
-2.574
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2422
</td>
<td style="text-align:right;">
3743
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-2.383
</td>
<td style="text-align:right;">
0.265
</td>
<td style="text-align:right;">
-2.917
</td>
<td style="text-align:right;">
-1.872
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2599
</td>
<td style="text-align:right;">
4366
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-1.686
</td>
<td style="text-align:right;">
0.245
</td>
<td style="text-align:right;">
-2.180
</td>
<td style="text-align:right;">
-1.214
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2670
</td>
<td style="text-align:right;">
4433
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-0.982
</td>
<td style="text-align:right;">
0.233
</td>
<td style="text-align:right;">
-1.450
</td>
<td style="text-align:right;">
-0.528
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2786
</td>
<td style="text-align:right;">
4657
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
-0.228
</td>
<td style="text-align:right;">
0.227
</td>
<td style="text-align:right;">
-0.679
</td>
<td style="text-align:right;">
0.222
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2885
</td>
<td style="text-align:right;">
4379
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
0.433
</td>
<td style="text-align:right;">
0.227
</td>
<td style="text-align:right;">
-0.004
</td>
<td style="text-align:right;">
0.877
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2989
</td>
<td style="text-align:right;">
4804
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
0.955
</td>
<td style="text-align:right;">
0.231
</td>
<td style="text-align:right;">
0.513
</td>
<td style="text-align:right;">
1.423
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3110
</td>
<td style="text-align:right;">
4610
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
1.551
</td>
<td style="text-align:right;">
0.238
</td>
<td style="text-align:right;">
1.089
</td>
<td style="text-align:right;">
2.042
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3119
</td>
<td style="text-align:right;">
4661
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
2.149
</td>
<td style="text-align:right;">
0.253
</td>
<td style="text-align:right;">
1.674
</td>
<td style="text-align:right;">
2.672
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3249
</td>
<td style="text-align:right;">
4851
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
2.577
</td>
<td style="text-align:right;">
0.264
</td>
<td style="text-align:right;">
2.082
</td>
<td style="text-align:right;">
3.125
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3281
</td>
<td style="text-align:right;">
5248
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
3.174
</td>
<td style="text-align:right;">
0.285
</td>
<td style="text-align:right;">
2.640
</td>
<td style="text-align:right;">
3.762
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3468
</td>
<td style="text-align:right;">
5238
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
3.697
</td>
<td style="text-align:right;">
0.305
</td>
<td style="text-align:right;">
3.125
</td>
<td style="text-align:right;">
4.333
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3529
</td>
<td style="text-align:right;">
5567
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
4.247
</td>
<td style="text-align:right;">
0.333
</td>
<td style="text-align:right;">
3.622
</td>
<td style="text-align:right;">
4.913
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3656
</td>
<td style="text-align:right;">
4813
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
4.699
</td>
<td style="text-align:right;">
0.357
</td>
<td style="text-align:right;">
4.028
</td>
<td style="text-align:right;">
5.419
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3719
</td>
<td style="text-align:right;">
5324
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
4.915
</td>
<td style="text-align:right;">
0.369
</td>
<td style="text-align:right;">
4.213
</td>
<td style="text-align:right;">
5.670
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3694
</td>
<td style="text-align:right;">
5461
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
5.947
</td>
<td style="text-align:right;">
0.449
</td>
<td style="text-align:right;">
5.094
</td>
<td style="text-align:right;">
6.836
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4257
</td>
<td style="text-align:right;">
5760
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
6.840
</td>
<td style="text-align:right;">
0.555
</td>
<td style="text-align:right;">
5.823
</td>
<td style="text-align:right;">
7.983
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5261
</td>
<td style="text-align:right;">
5385
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
7.734
</td>
<td style="text-align:right;">
0.709
</td>
<td style="text-align:right;">
6.458
</td>
<td style="text-align:right;">
9.272
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6499
</td>
<td style="text-align:right;">
6294
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[21\]
</td>
<td style="text-align:right;">
9.302
</td>
<td style="text-align:right;">
1.179
</td>
<td style="text-align:right;">
7.397
</td>
<td style="text-align:right;">
11.992
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9224
</td>
<td style="text-align:right;">
6164
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.388
</td>
<td style="text-align:right;">
0.097
</td>
<td style="text-align:right;">
0.197
</td>
<td style="text-align:right;">
0.576
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7318
</td>
<td style="text-align:right;">
6308
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.116
</td>
<td style="text-align:right;">
0.157
</td>
<td style="text-align:right;">
-0.195
</td>
<td style="text-align:right;">
0.423
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3521
</td>
<td style="text-align:right;">
5316
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.053
</td>
<td style="text-align:right;">
0.104
</td>
<td style="text-align:right;">
-0.151
</td>
<td style="text-align:right;">
0.258
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8079
</td>
<td style="text-align:right;">
5886
</td>
</tr>
<tr grouplength="9">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Loneliness</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-2.531
</td>
<td style="text-align:right;">
0.288
</td>
<td style="text-align:right;">
-3.115
</td>
<td style="text-align:right;">
-1.998
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2953
</td>
<td style="text-align:right;">
4888
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-1.133
</td>
<td style="text-align:right;">
0.247
</td>
<td style="text-align:right;">
-1.631
</td>
<td style="text-align:right;">
-0.666
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2962
</td>
<td style="text-align:right;">
4979
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
0.126
</td>
<td style="text-align:right;">
0.240
</td>
<td style="text-align:right;">
-0.345
</td>
<td style="text-align:right;">
0.597
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3129
</td>
<td style="text-align:right;">
5454
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
1.886
</td>
<td style="text-align:right;">
0.270
</td>
<td style="text-align:right;">
1.372
</td>
<td style="text-align:right;">
2.428
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3303
</td>
<td style="text-align:right;">
4045
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
3.218
</td>
<td style="text-align:right;">
0.316
</td>
<td style="text-align:right;">
2.628
</td>
<td style="text-align:right;">
3.867
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3614
</td>
<td style="text-align:right;">
5057
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
4.443
</td>
<td style="text-align:right;">
0.384
</td>
<td style="text-align:right;">
3.721
</td>
<td style="text-align:right;">
5.230
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3932
</td>
<td style="text-align:right;">
4907
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.620
</td>
<td style="text-align:right;">
0.108
</td>
<td style="text-align:right;">
0.410
</td>
<td style="text-align:right;">
0.833
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8316
</td>
<td style="text-align:right;">
5558
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.013
</td>
<td style="text-align:right;">
0.171
</td>
<td style="text-align:right;">
-0.328
</td>
<td style="text-align:right;">
0.341
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5076
</td>
<td style="text-align:right;">
6245
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.073
</td>
<td style="text-align:right;">
0.113
</td>
<td style="text-align:right;">
-0.146
</td>
<td style="text-align:right;">
0.299
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10314
</td>
<td style="text-align:right;">
6402
</td>
</tr>
</tbody>
</table>

### Moderation Model

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
term
</th>
<th style="text-align:right;">
Estimate
</th>
<th style="text-align:right;">
Est.Error
</th>
<th style="text-align:right;">
l-95% CI
</th>
<th style="text-align:right;">
u-95% CI
</th>
<th style="text-align:right;">
Rhat
</th>
<th style="text-align:right;">
Bulk_ESS
</th>
<th style="text-align:right;">
Tail_ESS
</th>
</tr>
</thead>
<tbody>
<tr grouplength="24">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Depression</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
1.169
</td>
<td style="text-align:right;">
0.448
</td>
<td style="text-align:right;">
0.277
</td>
<td style="text-align:right;">
2.056
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10173
</td>
<td style="text-align:right;">
6821
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
1.862
</td>
<td style="text-align:right;">
0.437
</td>
<td style="text-align:right;">
1.016
</td>
<td style="text-align:right;">
2.743
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9830
</td>
<td style="text-align:right;">
7187
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
2.396
</td>
<td style="text-align:right;">
0.436
</td>
<td style="text-align:right;">
1.549
</td>
<td style="text-align:right;">
3.278
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9306
</td>
<td style="text-align:right;">
7066
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
2.732
</td>
<td style="text-align:right;">
0.441
</td>
<td style="text-align:right;">
1.872
</td>
<td style="text-align:right;">
3.619
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9352
</td>
<td style="text-align:right;">
7190
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
3.037
</td>
<td style="text-align:right;">
0.448
</td>
<td style="text-align:right;">
2.166
</td>
<td style="text-align:right;">
3.941
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9303
</td>
<td style="text-align:right;">
7335
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
3.504
</td>
<td style="text-align:right;">
0.462
</td>
<td style="text-align:right;">
2.615
</td>
<td style="text-align:right;">
4.425
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9249
</td>
<td style="text-align:right;">
7092
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
3.799
</td>
<td style="text-align:right;">
0.470
</td>
<td style="text-align:right;">
2.891
</td>
<td style="text-align:right;">
4.737
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9190
</td>
<td style="text-align:right;">
6928
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
4.155
</td>
<td style="text-align:right;">
0.480
</td>
<td style="text-align:right;">
3.233
</td>
<td style="text-align:right;">
5.115
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9277
</td>
<td style="text-align:right;">
6991
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
4.440
</td>
<td style="text-align:right;">
0.490
</td>
<td style="text-align:right;">
3.495
</td>
<td style="text-align:right;">
5.425
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9380
</td>
<td style="text-align:right;">
6936
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
4.686
</td>
<td style="text-align:right;">
0.499
</td>
<td style="text-align:right;">
3.726
</td>
<td style="text-align:right;">
5.685
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9347
</td>
<td style="text-align:right;">
6865
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
4.913
</td>
<td style="text-align:right;">
0.508
</td>
<td style="text-align:right;">
3.938
</td>
<td style="text-align:right;">
5.928
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9325
</td>
<td style="text-align:right;">
6815
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
5.194
</td>
<td style="text-align:right;">
0.518
</td>
<td style="text-align:right;">
4.212
</td>
<td style="text-align:right;">
6.230
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9394
</td>
<td style="text-align:right;">
6826
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
5.428
</td>
<td style="text-align:right;">
0.524
</td>
<td style="text-align:right;">
4.442
</td>
<td style="text-align:right;">
6.485
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9528
</td>
<td style="text-align:right;">
7160
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
5.534
</td>
<td style="text-align:right;">
0.526
</td>
<td style="text-align:right;">
4.535
</td>
<td style="text-align:right;">
6.604
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9523
</td>
<td style="text-align:right;">
6992
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
5.911
</td>
<td style="text-align:right;">
0.540
</td>
<td style="text-align:right;">
4.895
</td>
<td style="text-align:right;">
6.997
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9460
</td>
<td style="text-align:right;">
6870
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
6.358
</td>
<td style="text-align:right;">
0.555
</td>
<td style="text-align:right;">
5.299
</td>
<td style="text-align:right;">
7.472
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9644
</td>
<td style="text-align:right;">
6438
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
6.647
</td>
<td style="text-align:right;">
0.566
</td>
<td style="text-align:right;">
5.557
</td>
<td style="text-align:right;">
7.775
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9858
</td>
<td style="text-align:right;">
6458
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
6.929
</td>
<td style="text-align:right;">
0.576
</td>
<td style="text-align:right;">
5.821
</td>
<td style="text-align:right;">
8.099
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9972
</td>
<td style="text-align:right;">
6734
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
7.387
</td>
<td style="text-align:right;">
0.595
</td>
<td style="text-align:right;">
6.241
</td>
<td style="text-align:right;">
8.593
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10210
</td>
<td style="text-align:right;">
6061
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
7.599
</td>
<td style="text-align:right;">
0.605
</td>
<td style="text-align:right;">
6.455
</td>
<td style="text-align:right;">
8.810
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10389
</td>
<td style="text-align:right;">
6709
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[21\]
</td>
<td style="text-align:right;">
8.132
</td>
<td style="text-align:right;">
0.642
</td>
<td style="text-align:right;">
6.902
</td>
<td style="text-align:right;">
9.408
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10616
</td>
<td style="text-align:right;">
6687
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
0.013
</td>
<td style="text-align:right;">
0.022
</td>
<td style="text-align:right;">
-0.028
</td>
<td style="text-align:right;">
0.057
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10203
</td>
<td style="text-align:right;">
5551
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.699
</td>
<td style="text-align:right;">
0.079
</td>
<td style="text-align:right;">
0.550
</td>
<td style="text-align:right;">
0.855
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9632
</td>
<td style="text-align:right;">
6605
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
-0.001
</td>
<td style="text-align:right;">
0.004
</td>
<td style="text-align:right;">
-0.008
</td>
<td style="text-align:right;">
0.006
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10067
</td>
<td style="text-align:right;">
5659
</td>
</tr>
<tr grouplength="20">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Anxiety</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
0.660
</td>
<td style="text-align:right;">
0.432
</td>
<td style="text-align:right;">
-0.177
</td>
<td style="text-align:right;">
1.520
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9896
</td>
<td style="text-align:right;">
7050
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
1.498
</td>
<td style="text-align:right;">
0.437
</td>
<td style="text-align:right;">
0.657
</td>
<td style="text-align:right;">
2.365
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9594
</td>
<td style="text-align:right;">
6663
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
2.100
</td>
<td style="text-align:right;">
0.445
</td>
<td style="text-align:right;">
1.257
</td>
<td style="text-align:right;">
2.980
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9397
</td>
<td style="text-align:right;">
6743
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
2.369
</td>
<td style="text-align:right;">
0.453
</td>
<td style="text-align:right;">
1.513
</td>
<td style="text-align:right;">
3.281
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9295
</td>
<td style="text-align:right;">
7151
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
2.759
</td>
<td style="text-align:right;">
0.465
</td>
<td style="text-align:right;">
1.883
</td>
<td style="text-align:right;">
3.696
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9092
</td>
<td style="text-align:right;">
7253
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
2.944
</td>
<td style="text-align:right;">
0.470
</td>
<td style="text-align:right;">
2.056
</td>
<td style="text-align:right;">
3.891
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9030
</td>
<td style="text-align:right;">
7200
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
3.286
</td>
<td style="text-align:right;">
0.481
</td>
<td style="text-align:right;">
2.361
</td>
<td style="text-align:right;">
4.257
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9100
</td>
<td style="text-align:right;">
7151
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
3.761
</td>
<td style="text-align:right;">
0.494
</td>
<td style="text-align:right;">
2.809
</td>
<td style="text-align:right;">
4.760
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9122
</td>
<td style="text-align:right;">
7015
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
4.197
</td>
<td style="text-align:right;">
0.507
</td>
<td style="text-align:right;">
3.216
</td>
<td style="text-align:right;">
5.214
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8848
</td>
<td style="text-align:right;">
6441
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
4.556
</td>
<td style="text-align:right;">
0.520
</td>
<td style="text-align:right;">
3.548
</td>
<td style="text-align:right;">
5.609
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8996
</td>
<td style="text-align:right;">
6610
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
5.139
</td>
<td style="text-align:right;">
0.550
</td>
<td style="text-align:right;">
4.077
</td>
<td style="text-align:right;">
6.259
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8796
</td>
<td style="text-align:right;">
6870
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
5.567
</td>
<td style="text-align:right;">
0.572
</td>
<td style="text-align:right;">
4.478
</td>
<td style="text-align:right;">
6.728
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9499
</td>
<td style="text-align:right;">
6926
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
5.841
</td>
<td style="text-align:right;">
0.593
</td>
<td style="text-align:right;">
4.714
</td>
<td style="text-align:right;">
7.038
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10120
</td>
<td style="text-align:right;">
6930
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
6.473
</td>
<td style="text-align:right;">
0.650
</td>
<td style="text-align:right;">
5.246
</td>
<td style="text-align:right;">
7.787
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10264
</td>
<td style="text-align:right;">
6811
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
7.083
</td>
<td style="text-align:right;">
0.736
</td>
<td style="text-align:right;">
5.714
</td>
<td style="text-align:right;">
8.577
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10651
</td>
<td style="text-align:right;">
6968
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
7.722
</td>
<td style="text-align:right;">
0.874
</td>
<td style="text-align:right;">
6.133
</td>
<td style="text-align:right;">
9.590
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10737
</td>
<td style="text-align:right;">
6622
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
8.867
</td>
<td style="text-align:right;">
1.225
</td>
<td style="text-align:right;">
6.832
</td>
<td style="text-align:right;">
11.660
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
12393
</td>
<td style="text-align:right;">
6346
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
0.030
</td>
<td style="text-align:right;">
0.022
</td>
<td style="text-align:right;">
-0.012
</td>
<td style="text-align:right;">
0.073
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8528
</td>
<td style="text-align:right;">
6298
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.398
</td>
<td style="text-align:right;">
0.076
</td>
<td style="text-align:right;">
0.250
</td>
<td style="text-align:right;">
0.551
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9196
</td>
<td style="text-align:right;">
6575
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
-0.003
</td>
<td style="text-align:right;">
0.004
</td>
<td style="text-align:right;">
-0.010
</td>
<td style="text-align:right;">
0.004
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8450
</td>
<td style="text-align:right;">
6130
</td>
</tr>
<tr grouplength="24">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Stress</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
0.326
</td>
<td style="text-align:right;">
0.449
</td>
<td style="text-align:right;">
-0.562
</td>
<td style="text-align:right;">
1.196
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10986
</td>
<td style="text-align:right;">
6654
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
0.841
</td>
<td style="text-align:right;">
0.435
</td>
<td style="text-align:right;">
-0.019
</td>
<td style="text-align:right;">
1.694
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11227
</td>
<td style="text-align:right;">
6696
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
1.195
</td>
<td style="text-align:right;">
0.430
</td>
<td style="text-align:right;">
0.361
</td>
<td style="text-align:right;">
2.032
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11012
</td>
<td style="text-align:right;">
6872
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
1.618
</td>
<td style="text-align:right;">
0.432
</td>
<td style="text-align:right;">
0.773
</td>
<td style="text-align:right;">
2.467
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10573
</td>
<td style="text-align:right;">
6620
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
2.010
</td>
<td style="text-align:right;">
0.438
</td>
<td style="text-align:right;">
1.162
</td>
<td style="text-align:right;">
2.874
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10161
</td>
<td style="text-align:right;">
6885
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
2.404
</td>
<td style="text-align:right;">
0.446
</td>
<td style="text-align:right;">
1.537
</td>
<td style="text-align:right;">
3.288
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9828
</td>
<td style="text-align:right;">
6715
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
2.761
</td>
<td style="text-align:right;">
0.454
</td>
<td style="text-align:right;">
1.878
</td>
<td style="text-align:right;">
3.662
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9734
</td>
<td style="text-align:right;">
6706
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
3.183
</td>
<td style="text-align:right;">
0.464
</td>
<td style="text-align:right;">
2.292
</td>
<td style="text-align:right;">
4.102
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9830
</td>
<td style="text-align:right;">
6534
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
3.436
</td>
<td style="text-align:right;">
0.472
</td>
<td style="text-align:right;">
2.520
</td>
<td style="text-align:right;">
4.358
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9739
</td>
<td style="text-align:right;">
6527
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
3.853
</td>
<td style="text-align:right;">
0.484
</td>
<td style="text-align:right;">
2.902
</td>
<td style="text-align:right;">
4.807
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9712
</td>
<td style="text-align:right;">
6620
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
4.203
</td>
<td style="text-align:right;">
0.494
</td>
<td style="text-align:right;">
3.242
</td>
<td style="text-align:right;">
5.193
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9844
</td>
<td style="text-align:right;">
6827
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
4.428
</td>
<td style="text-align:right;">
0.500
</td>
<td style="text-align:right;">
3.451
</td>
<td style="text-align:right;">
5.418
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9879
</td>
<td style="text-align:right;">
6553
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
4.938
</td>
<td style="text-align:right;">
0.519
</td>
<td style="text-align:right;">
3.928
</td>
<td style="text-align:right;">
5.968
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10134
</td>
<td style="text-align:right;">
6701
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
5.272
</td>
<td style="text-align:right;">
0.528
</td>
<td style="text-align:right;">
4.254
</td>
<td style="text-align:right;">
6.313
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10246
</td>
<td style="text-align:right;">
6567
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
5.589
</td>
<td style="text-align:right;">
0.537
</td>
<td style="text-align:right;">
4.560
</td>
<td style="text-align:right;">
6.657
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10376
</td>
<td style="text-align:right;">
6467
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
5.773
</td>
<td style="text-align:right;">
0.545
</td>
<td style="text-align:right;">
4.718
</td>
<td style="text-align:right;">
6.854
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10411
</td>
<td style="text-align:right;">
6242
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
5.976
</td>
<td style="text-align:right;">
0.552
</td>
<td style="text-align:right;">
4.919
</td>
<td style="text-align:right;">
7.061
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10385
</td>
<td style="text-align:right;">
6607
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
6.560
</td>
<td style="text-align:right;">
0.583
</td>
<td style="text-align:right;">
5.433
</td>
<td style="text-align:right;">
7.726
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10993
</td>
<td style="text-align:right;">
6510
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
7.312
</td>
<td style="text-align:right;">
0.647
</td>
<td style="text-align:right;">
6.088
</td>
<td style="text-align:right;">
8.602
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11868
</td>
<td style="text-align:right;">
6512
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
8.123
</td>
<td style="text-align:right;">
0.778
</td>
<td style="text-align:right;">
6.688
</td>
<td style="text-align:right;">
9.743
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
13028
</td>
<td style="text-align:right;">
6317
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[21\]
</td>
<td style="text-align:right;">
9.574
</td>
<td style="text-align:right;">
1.183
</td>
<td style="text-align:right;">
7.615
</td>
<td style="text-align:right;">
12.282
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
13619
</td>
<td style="text-align:right;">
6416
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
0.025
</td>
<td style="text-align:right;">
0.022
</td>
<td style="text-align:right;">
-0.017
</td>
<td style="text-align:right;">
0.068
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9362
</td>
<td style="text-align:right;">
6687
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.531
</td>
<td style="text-align:right;">
0.076
</td>
<td style="text-align:right;">
0.383
</td>
<td style="text-align:right;">
0.682
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9656
</td>
<td style="text-align:right;">
6624
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
-0.002
</td>
<td style="text-align:right;">
0.004
</td>
<td style="text-align:right;">
-0.010
</td>
<td style="text-align:right;">
0.005
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9492
</td>
<td style="text-align:right;">
5892
</td>
</tr>
</tbody>
</table>

## Study 2

### Main Model

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
term
</th>
<th style="text-align:right;">
Estimate
</th>
<th style="text-align:right;">
Est.Error
</th>
<th style="text-align:right;">
l-95% CI
</th>
<th style="text-align:right;">
u-95% CI
</th>
<th style="text-align:right;">
Rhat
</th>
<th style="text-align:right;">
Bulk_ESS
</th>
<th style="text-align:right;">
Tail_ESS
</th>
</tr>
</thead>
<tbody>
<tr grouplength="24">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Depression</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-8.129
</td>
<td style="text-align:right;">
1.068
</td>
<td style="text-align:right;">
-10.408
</td>
<td style="text-align:right;">
-6.226
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2577
</td>
<td style="text-align:right;">
2973
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-5.793
</td>
<td style="text-align:right;">
0.802
</td>
<td style="text-align:right;">
-7.474
</td>
<td style="text-align:right;">
-4.334
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2310
</td>
<td style="text-align:right;">
3417
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-4.232
</td>
<td style="text-align:right;">
0.675
</td>
<td style="text-align:right;">
-5.668
</td>
<td style="text-align:right;">
-3.023
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2282
</td>
<td style="text-align:right;">
3782
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-3.061
</td>
<td style="text-align:right;">
0.584
</td>
<td style="text-align:right;">
-4.265
</td>
<td style="text-align:right;">
-2.001
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2301
</td>
<td style="text-align:right;">
3463
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-2.132
</td>
<td style="text-align:right;">
0.528
</td>
<td style="text-align:right;">
-3.242
</td>
<td style="text-align:right;">
-1.163
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2381
</td>
<td style="text-align:right;">
3789
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-1.193
</td>
<td style="text-align:right;">
0.487
</td>
<td style="text-align:right;">
-2.196
</td>
<td style="text-align:right;">
-0.297
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2485
</td>
<td style="text-align:right;">
4045
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
-0.282
</td>
<td style="text-align:right;">
0.463
</td>
<td style="text-align:right;">
-1.201
</td>
<td style="text-align:right;">
0.625
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2687
</td>
<td style="text-align:right;">
3790
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
0.341
</td>
<td style="text-align:right;">
0.456
</td>
<td style="text-align:right;">
-0.562
</td>
<td style="text-align:right;">
1.227
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2930
</td>
<td style="text-align:right;">
4530
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
0.869
</td>
<td style="text-align:right;">
0.454
</td>
<td style="text-align:right;">
-0.027
</td>
<td style="text-align:right;">
1.765
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3018
</td>
<td style="text-align:right;">
4901
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
1.208
</td>
<td style="text-align:right;">
0.459
</td>
<td style="text-align:right;">
0.319
</td>
<td style="text-align:right;">
2.117
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2996
</td>
<td style="text-align:right;">
4677
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
1.564
</td>
<td style="text-align:right;">
0.469
</td>
<td style="text-align:right;">
0.670
</td>
<td style="text-align:right;">
2.497
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3031
</td>
<td style="text-align:right;">
4484
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
1.714
</td>
<td style="text-align:right;">
0.474
</td>
<td style="text-align:right;">
0.813
</td>
<td style="text-align:right;">
2.669
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3051
</td>
<td style="text-align:right;">
4491
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
2.529
</td>
<td style="text-align:right;">
0.512
</td>
<td style="text-align:right;">
1.573
</td>
<td style="text-align:right;">
3.562
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3242
</td>
<td style="text-align:right;">
4971
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
3.320
</td>
<td style="text-align:right;">
0.566
</td>
<td style="text-align:right;">
2.271
</td>
<td style="text-align:right;">
4.490
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3343
</td>
<td style="text-align:right;">
5008
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
4.019
</td>
<td style="text-align:right;">
0.612
</td>
<td style="text-align:right;">
2.880
</td>
<td style="text-align:right;">
5.288
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3243
</td>
<td style="text-align:right;">
4932
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
4.657
</td>
<td style="text-align:right;">
0.663
</td>
<td style="text-align:right;">
3.443
</td>
<td style="text-align:right;">
6.036
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3516
</td>
<td style="text-align:right;">
5085
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
5.212
</td>
<td style="text-align:right;">
0.696
</td>
<td style="text-align:right;">
3.927
</td>
<td style="text-align:right;">
6.654
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3699
</td>
<td style="text-align:right;">
5000
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
5.719
</td>
<td style="text-align:right;">
0.738
</td>
<td style="text-align:right;">
4.346
</td>
<td style="text-align:right;">
7.260
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3790
</td>
<td style="text-align:right;">
5367
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
6.348
</td>
<td style="text-align:right;">
0.792
</td>
<td style="text-align:right;">
4.871
</td>
<td style="text-align:right;">
7.992
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3672
</td>
<td style="text-align:right;">
5842
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
6.737
</td>
<td style="text-align:right;">
0.827
</td>
<td style="text-align:right;">
5.194
</td>
<td style="text-align:right;">
8.463
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3882
</td>
<td style="text-align:right;">
5903
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[21\]
</td>
<td style="text-align:right;">
8.326
</td>
<td style="text-align:right;">
1.069
</td>
<td style="text-align:right;">
6.417
</td>
<td style="text-align:right;">
10.610
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4507
</td>
<td style="text-align:right;">
6010
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.175
</td>
<td style="text-align:right;">
0.149
</td>
<td style="text-align:right;">
-0.115
</td>
<td style="text-align:right;">
0.464
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
13193
</td>
<td style="text-align:right;">
5659
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.803
</td>
<td style="text-align:right;">
0.265
</td>
<td style="text-align:right;">
0.294
</td>
<td style="text-align:right;">
1.334
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5216
</td>
<td style="text-align:right;">
5464
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.004
</td>
<td style="text-align:right;">
0.167
</td>
<td style="text-align:right;">
-0.324
</td>
<td style="text-align:right;">
0.331
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10430
</td>
<td style="text-align:right;">
5660
</td>
</tr>
<tr grouplength="19">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Anxiety</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-4.919
</td>
<td style="text-align:right;">
0.732
</td>
<td style="text-align:right;">
-6.441
</td>
<td style="text-align:right;">
-3.580
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1309
</td>
<td style="text-align:right;">
2574
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-2.981
</td>
<td style="text-align:right;">
0.596
</td>
<td style="text-align:right;">
-4.206
</td>
<td style="text-align:right;">
-1.887
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1304
</td>
<td style="text-align:right;">
2416
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-1.384
</td>
<td style="text-align:right;">
0.514
</td>
<td style="text-align:right;">
-2.433
</td>
<td style="text-align:right;">
-0.447
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1335
</td>
<td style="text-align:right;">
2467
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-0.075
</td>
<td style="text-align:right;">
0.476
</td>
<td style="text-align:right;">
-1.044
</td>
<td style="text-align:right;">
0.832
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1355
</td>
<td style="text-align:right;">
2712
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
0.731
</td>
<td style="text-align:right;">
0.472
</td>
<td style="text-align:right;">
-0.193
</td>
<td style="text-align:right;">
1.663
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1489
</td>
<td style="text-align:right;">
2949
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
1.752
</td>
<td style="text-align:right;">
0.497
</td>
<td style="text-align:right;">
0.815
</td>
<td style="text-align:right;">
2.737
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1829
</td>
<td style="text-align:right;">
3527
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
2.119
</td>
<td style="text-align:right;">
0.508
</td>
<td style="text-align:right;">
1.162
</td>
<td style="text-align:right;">
3.159
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1960
</td>
<td style="text-align:right;">
3663
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
2.922
</td>
<td style="text-align:right;">
0.545
</td>
<td style="text-align:right;">
1.904
</td>
<td style="text-align:right;">
4.067
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2374
</td>
<td style="text-align:right;">
4806
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
3.470
</td>
<td style="text-align:right;">
0.580
</td>
<td style="text-align:right;">
2.406
</td>
<td style="text-align:right;">
4.666
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2717
</td>
<td style="text-align:right;">
4695
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
3.911
</td>
<td style="text-align:right;">
0.613
</td>
<td style="text-align:right;">
2.795
</td>
<td style="text-align:right;">
5.213
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2957
</td>
<td style="text-align:right;">
5078
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
4.669
</td>
<td style="text-align:right;">
0.687
</td>
<td style="text-align:right;">
3.399
</td>
<td style="text-align:right;">
6.106
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3316
</td>
<td style="text-align:right;">
4680
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
5.757
</td>
<td style="text-align:right;">
0.780
</td>
<td style="text-align:right;">
4.322
</td>
<td style="text-align:right;">
7.396
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3593
</td>
<td style="text-align:right;">
4535
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
6.071
</td>
<td style="text-align:right;">
0.805
</td>
<td style="text-align:right;">
4.622
</td>
<td style="text-align:right;">
7.761
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3579
</td>
<td style="text-align:right;">
4912
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
7.095
</td>
<td style="text-align:right;">
0.916
</td>
<td style="text-align:right;">
5.420
</td>
<td style="text-align:right;">
8.998
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3952
</td>
<td style="text-align:right;">
5212
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
7.691
</td>
<td style="text-align:right;">
0.997
</td>
<td style="text-align:right;">
5.879
</td>
<td style="text-align:right;">
9.770
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4452
</td>
<td style="text-align:right;">
5935
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
9.344
</td>
<td style="text-align:right;">
1.382
</td>
<td style="text-align:right;">
6.971
</td>
<td style="text-align:right;">
12.310
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5682
</td>
<td style="text-align:right;">
5964
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.074
</td>
<td style="text-align:right;">
0.149
</td>
<td style="text-align:right;">
-0.219
</td>
<td style="text-align:right;">
0.366
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9433
</td>
<td style="text-align:right;">
6185
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.600
</td>
<td style="text-align:right;">
0.258
</td>
<td style="text-align:right;">
0.102
</td>
<td style="text-align:right;">
1.104
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2958
</td>
<td style="text-align:right;">
4535
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.175
</td>
<td style="text-align:right;">
0.165
</td>
<td style="text-align:right;">
-0.150
</td>
<td style="text-align:right;">
0.501
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7451
</td>
<td style="text-align:right;">
6102
</td>
</tr>
<tr grouplength="23">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Stress</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-7.554
</td>
<td style="text-align:right;">
1.016
</td>
<td style="text-align:right;">
-9.681
</td>
<td style="text-align:right;">
-5.729
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2328
</td>
<td style="text-align:right;">
3654
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-6.072
</td>
<td style="text-align:right;">
0.832
</td>
<td style="text-align:right;">
-7.770
</td>
<td style="text-align:right;">
-4.539
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2303
</td>
<td style="text-align:right;">
3437
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-4.940
</td>
<td style="text-align:right;">
0.727
</td>
<td style="text-align:right;">
-6.459
</td>
<td style="text-align:right;">
-3.609
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2197
</td>
<td style="text-align:right;">
3696
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-3.712
</td>
<td style="text-align:right;">
0.637
</td>
<td style="text-align:right;">
-5.071
</td>
<td style="text-align:right;">
-2.546
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2121
</td>
<td style="text-align:right;">
3600
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-2.555
</td>
<td style="text-align:right;">
0.566
</td>
<td style="text-align:right;">
-3.741
</td>
<td style="text-align:right;">
-1.509
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2052
</td>
<td style="text-align:right;">
3292
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-1.770
</td>
<td style="text-align:right;">
0.522
</td>
<td style="text-align:right;">
-2.844
</td>
<td style="text-align:right;">
-0.798
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2080
</td>
<td style="text-align:right;">
3638
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
-0.599
</td>
<td style="text-align:right;">
0.478
</td>
<td style="text-align:right;">
-1.556
</td>
<td style="text-align:right;">
0.311
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2063
</td>
<td style="text-align:right;">
4014
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
-0.251
</td>
<td style="text-align:right;">
0.474
</td>
<td style="text-align:right;">
-1.205
</td>
<td style="text-align:right;">
0.654
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2112
</td>
<td style="text-align:right;">
3662
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
0.485
</td>
<td style="text-align:right;">
0.473
</td>
<td style="text-align:right;">
-0.442
</td>
<td style="text-align:right;">
1.405
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2189
</td>
<td style="text-align:right;">
3650
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
1.164
</td>
<td style="text-align:right;">
0.484
</td>
<td style="text-align:right;">
0.235
</td>
<td style="text-align:right;">
2.129
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2221
</td>
<td style="text-align:right;">
3837
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
2.091
</td>
<td style="text-align:right;">
0.513
</td>
<td style="text-align:right;">
1.118
</td>
<td style="text-align:right;">
3.157
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2236
</td>
<td style="text-align:right;">
3979
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
2.738
</td>
<td style="text-align:right;">
0.534
</td>
<td style="text-align:right;">
1.727
</td>
<td style="text-align:right;">
3.856
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2344
</td>
<td style="text-align:right;">
3843
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
3.071
</td>
<td style="text-align:right;">
0.546
</td>
<td style="text-align:right;">
2.053
</td>
<td style="text-align:right;">
4.210
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2446
</td>
<td style="text-align:right;">
3651
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
3.796
</td>
<td style="text-align:right;">
0.578
</td>
<td style="text-align:right;">
2.724
</td>
<td style="text-align:right;">
4.989
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2594
</td>
<td style="text-align:right;">
4246
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
4.805
</td>
<td style="text-align:right;">
0.646
</td>
<td style="text-align:right;">
3.626
</td>
<td style="text-align:right;">
6.148
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2835
</td>
<td style="text-align:right;">
4838
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
5.271
</td>
<td style="text-align:right;">
0.680
</td>
<td style="text-align:right;">
4.040
</td>
<td style="text-align:right;">
6.697
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3066
</td>
<td style="text-align:right;">
4797
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
6.233
</td>
<td style="text-align:right;">
0.777
</td>
<td style="text-align:right;">
4.843
</td>
<td style="text-align:right;">
7.890
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3614
</td>
<td style="text-align:right;">
5721
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
6.700
</td>
<td style="text-align:right;">
0.847
</td>
<td style="text-align:right;">
5.189
</td>
<td style="text-align:right;">
8.492
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3854
</td>
<td style="text-align:right;">
5171
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
7.310
</td>
<td style="text-align:right;">
0.945
</td>
<td style="text-align:right;">
5.622
</td>
<td style="text-align:right;">
9.388
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4172
</td>
<td style="text-align:right;">
5810
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
9.143
</td>
<td style="text-align:right;">
1.449
</td>
<td style="text-align:right;">
6.699
</td>
<td style="text-align:right;">
12.421
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4399
</td>
<td style="text-align:right;">
5888
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
-0.073
</td>
<td style="text-align:right;">
0.142
</td>
<td style="text-align:right;">
-0.345
</td>
<td style="text-align:right;">
0.212
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10153
</td>
<td style="text-align:right;">
5768
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.628
</td>
<td style="text-align:right;">
0.261
</td>
<td style="text-align:right;">
0.120
</td>
<td style="text-align:right;">
1.151
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4154
</td>
<td style="text-align:right;">
5345
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.254
</td>
<td style="text-align:right;">
0.166
</td>
<td style="text-align:right;">
-0.068
</td>
<td style="text-align:right;">
0.581
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8075
</td>
<td style="text-align:right;">
6024
</td>
</tr>
<tr grouplength="14">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Loneliness</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-9.306
</td>
<td style="text-align:right;">
1.506
</td>
<td style="text-align:right;">
-12.656
</td>
<td style="text-align:right;">
-6.720
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2008
</td>
<td style="text-align:right;">
3113
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-6.705
</td>
<td style="text-align:right;">
1.022
</td>
<td style="text-align:right;">
-8.932
</td>
<td style="text-align:right;">
-4.906
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2207
</td>
<td style="text-align:right;">
3303
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-4.850
</td>
<td style="text-align:right;">
0.780
</td>
<td style="text-align:right;">
-6.500
</td>
<td style="text-align:right;">
-3.489
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2214
</td>
<td style="text-align:right;">
3475
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-2.950
</td>
<td style="text-align:right;">
0.599
</td>
<td style="text-align:right;">
-4.229
</td>
<td style="text-align:right;">
-1.867
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2338
</td>
<td style="text-align:right;">
3776
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-2.190
</td>
<td style="text-align:right;">
0.542
</td>
<td style="text-align:right;">
-3.332
</td>
<td style="text-align:right;">
-1.179
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2363
</td>
<td style="text-align:right;">
3763
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-1.181
</td>
<td style="text-align:right;">
0.490
</td>
<td style="text-align:right;">
-2.173
</td>
<td style="text-align:right;">
-0.250
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2342
</td>
<td style="text-align:right;">
3954
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
-0.492
</td>
<td style="text-align:right;">
0.474
</td>
<td style="text-align:right;">
-1.409
</td>
<td style="text-align:right;">
0.434
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2266
</td>
<td style="text-align:right;">
3716
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
0.851
</td>
<td style="text-align:right;">
0.492
</td>
<td style="text-align:right;">
-0.056
</td>
<td style="text-align:right;">
1.843
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2124
</td>
<td style="text-align:right;">
3514
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
1.784
</td>
<td style="text-align:right;">
0.530
</td>
<td style="text-align:right;">
0.811
</td>
<td style="text-align:right;">
2.881
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2061
</td>
<td style="text-align:right;">
3407
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
2.995
</td>
<td style="text-align:right;">
0.594
</td>
<td style="text-align:right;">
1.920
</td>
<td style="text-align:right;">
4.225
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2096
</td>
<td style="text-align:right;">
3408
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
5.055
</td>
<td style="text-align:right;">
0.730
</td>
<td style="text-align:right;">
3.729
</td>
<td style="text-align:right;">
6.596
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2088
</td>
<td style="text-align:right;">
4084
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.139
</td>
<td style="text-align:right;">
0.151
</td>
<td style="text-align:right;">
-0.159
</td>
<td style="text-align:right;">
0.437
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10423
</td>
<td style="text-align:right;">
5682
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.212
</td>
<td style="text-align:right;">
0.259
</td>
<td style="text-align:right;">
-0.298
</td>
<td style="text-align:right;">
0.718
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3971
</td>
<td style="text-align:right;">
5380
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.008
</td>
<td style="text-align:right;">
0.171
</td>
<td style="text-align:right;">
-0.330
</td>
<td style="text-align:right;">
0.341
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8264
</td>
<td style="text-align:right;">
6196
</td>
</tr>
</tbody>
</table>

### Moderation Model

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
term
</th>
<th style="text-align:right;">
Estimate
</th>
<th style="text-align:right;">
Est.Error
</th>
<th style="text-align:right;">
l-95% CI
</th>
<th style="text-align:right;">
u-95% CI
</th>
<th style="text-align:right;">
Rhat
</th>
<th style="text-align:right;">
Bulk_ESS
</th>
<th style="text-align:right;">
Tail_ESS
</th>
</tr>
</thead>
<tbody>
<tr grouplength="23">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Depression</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-1.244
</td>
<td style="text-align:right;">
0.659
</td>
<td style="text-align:right;">
-2.596
</td>
<td style="text-align:right;">
-0.019
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10853
</td>
<td style="text-align:right;">
5950
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-0.069
</td>
<td style="text-align:right;">
0.533
</td>
<td style="text-align:right;">
-1.107
</td>
<td style="text-align:right;">
0.981
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
13733
</td>
<td style="text-align:right;">
6713
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
0.880
</td>
<td style="text-align:right;">
0.514
</td>
<td style="text-align:right;">
-0.111
</td>
<td style="text-align:right;">
1.906
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
12442
</td>
<td style="text-align:right;">
7269
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
1.190
</td>
<td style="text-align:right;">
0.517
</td>
<td style="text-align:right;">
0.189
</td>
<td style="text-align:right;">
2.236
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11996
</td>
<td style="text-align:right;">
6713
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
1.673
</td>
<td style="text-align:right;">
0.531
</td>
<td style="text-align:right;">
0.655
</td>
<td style="text-align:right;">
2.746
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11571
</td>
<td style="text-align:right;">
6694
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
2.050
</td>
<td style="text-align:right;">
0.546
</td>
<td style="text-align:right;">
1.001
</td>
<td style="text-align:right;">
3.142
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11302
</td>
<td style="text-align:right;">
6751
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
2.340
</td>
<td style="text-align:right;">
0.558
</td>
<td style="text-align:right;">
1.282
</td>
<td style="text-align:right;">
3.477
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11073
</td>
<td style="text-align:right;">
6564
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
2.745
</td>
<td style="text-align:right;">
0.573
</td>
<td style="text-align:right;">
1.663
</td>
<td style="text-align:right;">
3.898
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10780
</td>
<td style="text-align:right;">
6730
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
3.106
</td>
<td style="text-align:right;">
0.589
</td>
<td style="text-align:right;">
1.988
</td>
<td style="text-align:right;">
4.278
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10749
</td>
<td style="text-align:right;">
6856
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
3.293
</td>
<td style="text-align:right;">
0.596
</td>
<td style="text-align:right;">
2.150
</td>
<td style="text-align:right;">
4.486
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10698
</td>
<td style="text-align:right;">
6430
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
3.487
</td>
<td style="text-align:right;">
0.605
</td>
<td style="text-align:right;">
2.329
</td>
<td style="text-align:right;">
4.699
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10824
</td>
<td style="text-align:right;">
6582
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
3.689
</td>
<td style="text-align:right;">
0.614
</td>
<td style="text-align:right;">
2.523
</td>
<td style="text-align:right;">
4.925
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10863
</td>
<td style="text-align:right;">
6528
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
4.051
</td>
<td style="text-align:right;">
0.637
</td>
<td style="text-align:right;">
2.844
</td>
<td style="text-align:right;">
5.320
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10790
</td>
<td style="text-align:right;">
6298
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
4.373
</td>
<td style="text-align:right;">
0.657
</td>
<td style="text-align:right;">
3.123
</td>
<td style="text-align:right;">
5.676
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10813
</td>
<td style="text-align:right;">
6327
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
4.546
</td>
<td style="text-align:right;">
0.671
</td>
<td style="text-align:right;">
3.264
</td>
<td style="text-align:right;">
5.878
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10826
</td>
<td style="text-align:right;">
6406
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
4.817
</td>
<td style="text-align:right;">
0.690
</td>
<td style="text-align:right;">
3.521
</td>
<td style="text-align:right;">
6.191
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11065
</td>
<td style="text-align:right;">
6552
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
5.226
</td>
<td style="text-align:right;">
0.713
</td>
<td style="text-align:right;">
3.874
</td>
<td style="text-align:right;">
6.659
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11219
</td>
<td style="text-align:right;">
6580
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
5.750
</td>
<td style="text-align:right;">
0.755
</td>
<td style="text-align:right;">
4.319
</td>
<td style="text-align:right;">
7.279
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11672
</td>
<td style="text-align:right;">
6783
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
6.090
</td>
<td style="text-align:right;">
0.782
</td>
<td style="text-align:right;">
4.607
</td>
<td style="text-align:right;">
7.672
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11577
</td>
<td style="text-align:right;">
6981
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
7.270
</td>
<td style="text-align:right;">
0.988
</td>
<td style="text-align:right;">
5.495
</td>
<td style="text-align:right;">
9.400
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
12680
</td>
<td style="text-align:right;">
6389
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
-0.008
</td>
<td style="text-align:right;">
0.027
</td>
<td style="text-align:right;">
-0.061
</td>
<td style="text-align:right;">
0.045
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10144
</td>
<td style="text-align:right;">
6248
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.350
</td>
<td style="text-align:right;">
0.070
</td>
<td style="text-align:right;">
0.219
</td>
<td style="text-align:right;">
0.488
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
12083
</td>
<td style="text-align:right;">
6958
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
0.003
</td>
<td style="text-align:right;">
0.003
</td>
<td style="text-align:right;">
-0.004
</td>
<td style="text-align:right;">
0.009
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10310
</td>
<td style="text-align:right;">
6272
</td>
</tr>
<tr grouplength="18">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Anxiety</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-0.313
</td>
<td style="text-align:right;">
0.494
</td>
<td style="text-align:right;">
-1.308
</td>
<td style="text-align:right;">
0.645
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7965
</td>
<td style="text-align:right;">
6161
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
0.551
</td>
<td style="text-align:right;">
0.479
</td>
<td style="text-align:right;">
-0.367
</td>
<td style="text-align:right;">
1.477
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9102
</td>
<td style="text-align:right;">
6689
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
1.057
</td>
<td style="text-align:right;">
0.486
</td>
<td style="text-align:right;">
0.123
</td>
<td style="text-align:right;">
2.012
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8418
</td>
<td style="text-align:right;">
6638
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
1.653
</td>
<td style="text-align:right;">
0.504
</td>
<td style="text-align:right;">
0.683
</td>
<td style="text-align:right;">
2.655
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8014
</td>
<td style="text-align:right;">
6817
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
2.003
</td>
<td style="text-align:right;">
0.520
</td>
<td style="text-align:right;">
1.010
</td>
<td style="text-align:right;">
3.033
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7867
</td>
<td style="text-align:right;">
6878
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
2.305
</td>
<td style="text-align:right;">
0.532
</td>
<td style="text-align:right;">
1.271
</td>
<td style="text-align:right;">
3.367
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7463
</td>
<td style="text-align:right;">
6810
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
2.550
</td>
<td style="text-align:right;">
0.542
</td>
<td style="text-align:right;">
1.495
</td>
<td style="text-align:right;">
3.629
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7495
</td>
<td style="text-align:right;">
6791
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
2.885
</td>
<td style="text-align:right;">
0.558
</td>
<td style="text-align:right;">
1.802
</td>
<td style="text-align:right;">
4.007
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7534
</td>
<td style="text-align:right;">
6502
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
3.108
</td>
<td style="text-align:right;">
0.571
</td>
<td style="text-align:right;">
2.007
</td>
<td style="text-align:right;">
4.271
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7363
</td>
<td style="text-align:right;">
6496
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
3.440
</td>
<td style="text-align:right;">
0.590
</td>
<td style="text-align:right;">
2.315
</td>
<td style="text-align:right;">
4.624
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7586
</td>
<td style="text-align:right;">
6775
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
3.726
</td>
<td style="text-align:right;">
0.609
</td>
<td style="text-align:right;">
2.558
</td>
<td style="text-align:right;">
4.963
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7788
</td>
<td style="text-align:right;">
6628
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
4.061
</td>
<td style="text-align:right;">
0.634
</td>
<td style="text-align:right;">
2.870
</td>
<td style="text-align:right;">
5.353
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8519
</td>
<td style="text-align:right;">
6741
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
4.326
</td>
<td style="text-align:right;">
0.659
</td>
<td style="text-align:right;">
3.076
</td>
<td style="text-align:right;">
5.632
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8676
</td>
<td style="text-align:right;">
7136
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
5.320
</td>
<td style="text-align:right;">
0.793
</td>
<td style="text-align:right;">
3.857
</td>
<td style="text-align:right;">
6.994
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8939
</td>
<td style="text-align:right;">
6931
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
6.783
</td>
<td style="text-align:right;">
1.187
</td>
<td style="text-align:right;">
4.762
</td>
<td style="text-align:right;">
9.435
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10142
</td>
<td style="text-align:right;">
6359
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
0.017
</td>
<td style="text-align:right;">
0.026
</td>
<td style="text-align:right;">
-0.033
</td>
<td style="text-align:right;">
0.070
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6094
</td>
<td style="text-align:right;">
4348
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.220
</td>
<td style="text-align:right;">
0.064
</td>
<td style="text-align:right;">
0.095
</td>
<td style="text-align:right;">
0.349
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7270
</td>
<td style="text-align:right;">
5731
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
-0.001
</td>
<td style="text-align:right;">
0.003
</td>
<td style="text-align:right;">
-0.007
</td>
<td style="text-align:right;">
0.005
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6385
</td>
<td style="text-align:right;">
4947
</td>
</tr>
<tr grouplength="22">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Stress</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-1.867
</td>
<td style="text-align:right;">
0.635
</td>
<td style="text-align:right;">
-3.168
</td>
<td style="text-align:right;">
-0.670
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9482
</td>
<td style="text-align:right;">
6356
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-1.211
</td>
<td style="text-align:right;">
0.570
</td>
<td style="text-align:right;">
-2.341
</td>
<td style="text-align:right;">
-0.093
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10822
</td>
<td style="text-align:right;">
6706
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-0.680
</td>
<td style="text-align:right;">
0.541
</td>
<td style="text-align:right;">
-1.735
</td>
<td style="text-align:right;">
0.385
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10998
</td>
<td style="text-align:right;">
6310
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-0.012
</td>
<td style="text-align:right;">
0.520
</td>
<td style="text-align:right;">
-1.017
</td>
<td style="text-align:right;">
1.017
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11805
</td>
<td style="text-align:right;">
6467
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
0.535
</td>
<td style="text-align:right;">
0.514
</td>
<td style="text-align:right;">
-0.456
</td>
<td style="text-align:right;">
1.560
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11576
</td>
<td style="text-align:right;">
6547
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
0.815
</td>
<td style="text-align:right;">
0.514
</td>
<td style="text-align:right;">
-0.160
</td>
<td style="text-align:right;">
1.838
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11740
</td>
<td style="text-align:right;">
6759
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
1.227
</td>
<td style="text-align:right;">
0.514
</td>
<td style="text-align:right;">
0.253
</td>
<td style="text-align:right;">
2.266
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11677
</td>
<td style="text-align:right;">
6877
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
1.328
</td>
<td style="text-align:right;">
0.516
</td>
<td style="text-align:right;">
0.342
</td>
<td style="text-align:right;">
2.355
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11563
</td>
<td style="text-align:right;">
6483
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
1.688
</td>
<td style="text-align:right;">
0.528
</td>
<td style="text-align:right;">
0.700
</td>
<td style="text-align:right;">
2.754
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11382
</td>
<td style="text-align:right;">
6595
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
2.012
</td>
<td style="text-align:right;">
0.544
</td>
<td style="text-align:right;">
0.992
</td>
<td style="text-align:right;">
3.094
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11245
</td>
<td style="text-align:right;">
6506
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
2.127
</td>
<td style="text-align:right;">
0.548
</td>
<td style="text-align:right;">
1.093
</td>
<td style="text-align:right;">
3.213
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11215
</td>
<td style="text-align:right;">
6400
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
2.478
</td>
<td style="text-align:right;">
0.565
</td>
<td style="text-align:right;">
1.412
</td>
<td style="text-align:right;">
3.601
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10880
</td>
<td style="text-align:right;">
6512
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
2.731
</td>
<td style="text-align:right;">
0.575
</td>
<td style="text-align:right;">
1.652
</td>
<td style="text-align:right;">
3.868
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11107
</td>
<td style="text-align:right;">
6479
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
3.249
</td>
<td style="text-align:right;">
0.599
</td>
<td style="text-align:right;">
2.120
</td>
<td style="text-align:right;">
4.449
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11070
</td>
<td style="text-align:right;">
6837
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
3.835
</td>
<td style="text-align:right;">
0.632
</td>
<td style="text-align:right;">
2.656
</td>
<td style="text-align:right;">
5.102
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11353
</td>
<td style="text-align:right;">
6783
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
4.232
</td>
<td style="text-align:right;">
0.671
</td>
<td style="text-align:right;">
2.985
</td>
<td style="text-align:right;">
5.597
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11322
</td>
<td style="text-align:right;">
6331
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
4.764
</td>
<td style="text-align:right;">
0.736
</td>
<td style="text-align:right;">
3.398
</td>
<td style="text-align:right;">
6.284
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11337
</td>
<td style="text-align:right;">
6748
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
5.262
</td>
<td style="text-align:right;">
0.813
</td>
<td style="text-align:right;">
3.777
</td>
<td style="text-align:right;">
6.937
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11324
</td>
<td style="text-align:right;">
6709
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
6.735
</td>
<td style="text-align:right;">
1.201
</td>
<td style="text-align:right;">
4.694
</td>
<td style="text-align:right;">
9.473
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11764
</td>
<td style="text-align:right;">
6318
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
0.050
</td>
<td style="text-align:right;">
0.026
</td>
<td style="text-align:right;">
0.000
</td>
<td style="text-align:right;">
0.101
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9122
</td>
<td style="text-align:right;">
6275
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.207
</td>
<td style="text-align:right;">
0.067
</td>
<td style="text-align:right;">
0.079
</td>
<td style="text-align:right;">
0.337
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11729
</td>
<td style="text-align:right;">
6400
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
-0.004
</td>
<td style="text-align:right;">
0.003
</td>
<td style="text-align:right;">
-0.011
</td>
<td style="text-align:right;">
0.002
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9086
</td>
<td style="text-align:right;">
6622
</td>
</tr>
</tbody>
</table>

## Study 3

### Main Model

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
term
</th>
<th style="text-align:right;">
Estimate
</th>
<th style="text-align:right;">
Est.Error
</th>
<th style="text-align:right;">
l-95% CI
</th>
<th style="text-align:right;">
u-95% CI
</th>
<th style="text-align:right;">
Rhat
</th>
<th style="text-align:right;">
Bulk_ESS
</th>
<th style="text-align:right;">
Tail_ESS
</th>
</tr>
</thead>
<tbody>
<tr grouplength="23">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Depression</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-6.862
</td>
<td style="text-align:right;">
1.013
</td>
<td style="text-align:right;">
-9.014
</td>
<td style="text-align:right;">
-5.016
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2019
</td>
<td style="text-align:right;">
3197
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-4.816
</td>
<td style="text-align:right;">
0.774
</td>
<td style="text-align:right;">
-6.436
</td>
<td style="text-align:right;">
-3.431
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1948
</td>
<td style="text-align:right;">
3181
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-3.863
</td>
<td style="text-align:right;">
0.677
</td>
<td style="text-align:right;">
-5.283
</td>
<td style="text-align:right;">
-2.633
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2001
</td>
<td style="text-align:right;">
3409
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-3.062
</td>
<td style="text-align:right;">
0.608
</td>
<td style="text-align:right;">
-4.315
</td>
<td style="text-align:right;">
-1.964
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1973
</td>
<td style="text-align:right;">
3372
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-2.214
</td>
<td style="text-align:right;">
0.550
</td>
<td style="text-align:right;">
-3.354
</td>
<td style="text-align:right;">
-1.230
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1946
</td>
<td style="text-align:right;">
3401
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-1.404
</td>
<td style="text-align:right;">
0.508
</td>
<td style="text-align:right;">
-2.444
</td>
<td style="text-align:right;">
-0.470
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1919
</td>
<td style="text-align:right;">
3687
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
-1.096
</td>
<td style="text-align:right;">
0.500
</td>
<td style="text-align:right;">
-2.122
</td>
<td style="text-align:right;">
-0.159
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1961
</td>
<td style="text-align:right;">
3589
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
-0.133
</td>
<td style="text-align:right;">
0.483
</td>
<td style="text-align:right;">
-1.095
</td>
<td style="text-align:right;">
0.797
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2040
</td>
<td style="text-align:right;">
3665
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
0.217
</td>
<td style="text-align:right;">
0.483
</td>
<td style="text-align:right;">
-0.739
</td>
<td style="text-align:right;">
1.148
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2046
</td>
<td style="text-align:right;">
3867
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
0.566
</td>
<td style="text-align:right;">
0.485
</td>
<td style="text-align:right;">
-0.390
</td>
<td style="text-align:right;">
1.529
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2104
</td>
<td style="text-align:right;">
3603
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
1.194
</td>
<td style="text-align:right;">
0.498
</td>
<td style="text-align:right;">
0.226
</td>
<td style="text-align:right;">
2.189
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2129
</td>
<td style="text-align:right;">
3369
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
1.815
</td>
<td style="text-align:right;">
0.520
</td>
<td style="text-align:right;">
0.833
</td>
<td style="text-align:right;">
2.885
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2369
</td>
<td style="text-align:right;">
4035
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
2.540
</td>
<td style="text-align:right;">
0.559
</td>
<td style="text-align:right;">
1.484
</td>
<td style="text-align:right;">
3.688
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2478
</td>
<td style="text-align:right;">
3658
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
3.009
</td>
<td style="text-align:right;">
0.593
</td>
<td style="text-align:right;">
1.920
</td>
<td style="text-align:right;">
4.244
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2510
</td>
<td style="text-align:right;">
3996
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
3.534
</td>
<td style="text-align:right;">
0.629
</td>
<td style="text-align:right;">
2.376
</td>
<td style="text-align:right;">
4.837
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2720
</td>
<td style="text-align:right;">
4601
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
4.326
</td>
<td style="text-align:right;">
0.695
</td>
<td style="text-align:right;">
3.056
</td>
<td style="text-align:right;">
5.770
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2787
</td>
<td style="text-align:right;">
4545
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
5.002
</td>
<td style="text-align:right;">
0.764
</td>
<td style="text-align:right;">
3.617
</td>
<td style="text-align:right;">
6.578
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2982
</td>
<td style="text-align:right;">
4866
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
5.651
</td>
<td style="text-align:right;">
0.851
</td>
<td style="text-align:right;">
4.142
</td>
<td style="text-align:right;">
7.438
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3227
</td>
<td style="text-align:right;">
5240
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
6.224
</td>
<td style="text-align:right;">
0.932
</td>
<td style="text-align:right;">
4.590
</td>
<td style="text-align:right;">
8.190
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3435
</td>
<td style="text-align:right;">
5639
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
7.455
</td>
<td style="text-align:right;">
1.151
</td>
<td style="text-align:right;">
5.444
</td>
<td style="text-align:right;">
9.864
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4266
</td>
<td style="text-align:right;">
5797
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.091
</td>
<td style="text-align:right;">
0.173
</td>
<td style="text-align:right;">
-0.244
</td>
<td style="text-align:right;">
0.429
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7024
</td>
<td style="text-align:right;">
5940
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.032
</td>
<td style="text-align:right;">
0.365
</td>
<td style="text-align:right;">
-0.692
</td>
<td style="text-align:right;">
0.751
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2365
</td>
<td style="text-align:right;">
3660
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.198
</td>
<td style="text-align:right;">
0.189
</td>
<td style="text-align:right;">
-0.176
</td>
<td style="text-align:right;">
0.573
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7716
</td>
<td style="text-align:right;">
6175
</td>
</tr>
<tr grouplength="20">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Anxiety</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-5.224
</td>
<td style="text-align:right;">
1.048
</td>
<td style="text-align:right;">
-7.506
</td>
<td style="text-align:right;">
-3.387
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1139
</td>
<td style="text-align:right;">
2856
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-3.532
</td>
<td style="text-align:right;">
0.882
</td>
<td style="text-align:right;">
-5.441
</td>
<td style="text-align:right;">
-1.981
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1145
</td>
<td style="text-align:right;">
2812
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-2.209
</td>
<td style="text-align:right;">
0.753
</td>
<td style="text-align:right;">
-3.794
</td>
<td style="text-align:right;">
-0.849
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1147
</td>
<td style="text-align:right;">
2476
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-1.215
</td>
<td style="text-align:right;">
0.696
</td>
<td style="text-align:right;">
-2.664
</td>
<td style="text-align:right;">
0.073
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1183
</td>
<td style="text-align:right;">
2547
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-0.061
</td>
<td style="text-align:right;">
0.657
</td>
<td style="text-align:right;">
-1.378
</td>
<td style="text-align:right;">
1.184
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1289
</td>
<td style="text-align:right;">
2513
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
0.763
</td>
<td style="text-align:right;">
0.649
</td>
<td style="text-align:right;">
-0.532
</td>
<td style="text-align:right;">
2.025
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1364
</td>
<td style="text-align:right;">
2887
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
1.256
</td>
<td style="text-align:right;">
0.653
</td>
<td style="text-align:right;">
-0.040
</td>
<td style="text-align:right;">
2.540
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1450
</td>
<td style="text-align:right;">
2944
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
2.037
</td>
<td style="text-align:right;">
0.668
</td>
<td style="text-align:right;">
0.770
</td>
<td style="text-align:right;">
3.370
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1611
</td>
<td style="text-align:right;">
3211
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
2.730
</td>
<td style="text-align:right;">
0.701
</td>
<td style="text-align:right;">
1.367
</td>
<td style="text-align:right;">
4.163
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1791
</td>
<td style="text-align:right;">
3259
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
3.418
</td>
<td style="text-align:right;">
0.755
</td>
<td style="text-align:right;">
2.013
</td>
<td style="text-align:right;">
4.970
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2079
</td>
<td style="text-align:right;">
4012
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
3.723
</td>
<td style="text-align:right;">
0.778
</td>
<td style="text-align:right;">
2.275
</td>
<td style="text-align:right;">
5.334
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2180
</td>
<td style="text-align:right;">
3962
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
4.538
</td>
<td style="text-align:right;">
0.852
</td>
<td style="text-align:right;">
2.962
</td>
<td style="text-align:right;">
6.316
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2424
</td>
<td style="text-align:right;">
3695
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
5.272
</td>
<td style="text-align:right;">
0.917
</td>
<td style="text-align:right;">
3.605
</td>
<td style="text-align:right;">
7.243
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2702
</td>
<td style="text-align:right;">
4289
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
6.103
</td>
<td style="text-align:right;">
0.996
</td>
<td style="text-align:right;">
4.273
</td>
<td style="text-align:right;">
8.183
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2995
</td>
<td style="text-align:right;">
4193
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
6.590
</td>
<td style="text-align:right;">
1.046
</td>
<td style="text-align:right;">
4.703
</td>
<td style="text-align:right;">
8.781
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3217
</td>
<td style="text-align:right;">
4602
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
9.072
</td>
<td style="text-align:right;">
1.604
</td>
<td style="text-align:right;">
6.391
</td>
<td style="text-align:right;">
12.609
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4518
</td>
<td style="text-align:right;">
5648
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
11.400
</td>
<td style="text-align:right;">
2.333
</td>
<td style="text-align:right;">
7.620
</td>
<td style="text-align:right;">
16.791
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4801
</td>
<td style="text-align:right;">
4964
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.120
</td>
<td style="text-align:right;">
0.183
</td>
<td style="text-align:right;">
-0.239
</td>
<td style="text-align:right;">
0.472
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9160
</td>
<td style="text-align:right;">
6052
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
-0.222
</td>
<td style="text-align:right;">
0.386
</td>
<td style="text-align:right;">
-0.995
</td>
<td style="text-align:right;">
0.521
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2344
</td>
<td style="text-align:right;">
3993
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
-0.079
</td>
<td style="text-align:right;">
0.202
</td>
<td style="text-align:right;">
-0.476
</td>
<td style="text-align:right;">
0.318
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8277
</td>
<td style="text-align:right;">
6488
</td>
</tr>
<tr grouplength="23">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Stress</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-7.315
</td>
<td style="text-align:right;">
1.148
</td>
<td style="text-align:right;">
-9.772
</td>
<td style="text-align:right;">
-5.280
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2703
</td>
<td style="text-align:right;">
3662
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-6.145
</td>
<td style="text-align:right;">
0.980
</td>
<td style="text-align:right;">
-8.230
</td>
<td style="text-align:right;">
-4.391
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2683
</td>
<td style="text-align:right;">
4218
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-5.381
</td>
<td style="text-align:right;">
0.899
</td>
<td style="text-align:right;">
-7.287
</td>
<td style="text-align:right;">
-3.779
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2705
</td>
<td style="text-align:right;">
4033
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-4.321
</td>
<td style="text-align:right;">
0.796
</td>
<td style="text-align:right;">
-5.994
</td>
<td style="text-align:right;">
-2.897
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2666
</td>
<td style="text-align:right;">
4214
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-3.909
</td>
<td style="text-align:right;">
0.757
</td>
<td style="text-align:right;">
-5.501
</td>
<td style="text-align:right;">
-2.544
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2591
</td>
<td style="text-align:right;">
3903
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-2.572
</td>
<td style="text-align:right;">
0.644
</td>
<td style="text-align:right;">
-3.908
</td>
<td style="text-align:right;">
-1.401
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2535
</td>
<td style="text-align:right;">
3861
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
-1.381
</td>
<td style="text-align:right;">
0.576
</td>
<td style="text-align:right;">
-2.546
</td>
<td style="text-align:right;">
-0.304
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2502
</td>
<td style="text-align:right;">
4190
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
-0.805
</td>
<td style="text-align:right;">
0.559
</td>
<td style="text-align:right;">
-1.951
</td>
<td style="text-align:right;">
0.263
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2549
</td>
<td style="text-align:right;">
4366
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
-0.057
</td>
<td style="text-align:right;">
0.552
</td>
<td style="text-align:right;">
-1.151
</td>
<td style="text-align:right;">
1.032
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2653
</td>
<td style="text-align:right;">
4503
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
0.323
</td>
<td style="text-align:right;">
0.550
</td>
<td style="text-align:right;">
-0.769
</td>
<td style="text-align:right;">
1.418
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2613
</td>
<td style="text-align:right;">
4235
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
0.905
</td>
<td style="text-align:right;">
0.559
</td>
<td style="text-align:right;">
-0.194
</td>
<td style="text-align:right;">
2.040
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2709
</td>
<td style="text-align:right;">
4461
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
1.873
</td>
<td style="text-align:right;">
0.590
</td>
<td style="text-align:right;">
0.762
</td>
<td style="text-align:right;">
3.062
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2916
</td>
<td style="text-align:right;">
4853
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
2.333
</td>
<td style="text-align:right;">
0.608
</td>
<td style="text-align:right;">
1.178
</td>
<td style="text-align:right;">
3.543
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2998
</td>
<td style="text-align:right;">
4974
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
3.048
</td>
<td style="text-align:right;">
0.650
</td>
<td style="text-align:right;">
1.868
</td>
<td style="text-align:right;">
4.416
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3096
</td>
<td style="text-align:right;">
5234
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
3.543
</td>
<td style="text-align:right;">
0.692
</td>
<td style="text-align:right;">
2.267
</td>
<td style="text-align:right;">
4.993
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3271
</td>
<td style="text-align:right;">
5543
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
5.214
</td>
<td style="text-align:right;">
0.890
</td>
<td style="text-align:right;">
3.589
</td>
<td style="text-align:right;">
7.094
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3713
</td>
<td style="text-align:right;">
5037
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
6.157
</td>
<td style="text-align:right;">
1.015
</td>
<td style="text-align:right;">
4.324
</td>
<td style="text-align:right;">
8.254
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3878
</td>
<td style="text-align:right;">
5100
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
7.147
</td>
<td style="text-align:right;">
1.185
</td>
<td style="text-align:right;">
5.064
</td>
<td style="text-align:right;">
9.684
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3889
</td>
<td style="text-align:right;">
4905
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
8.425
</td>
<td style="text-align:right;">
1.432
</td>
<td style="text-align:right;">
5.911
</td>
<td style="text-align:right;">
11.493
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3844
</td>
<td style="text-align:right;">
4634
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
10.027
</td>
<td style="text-align:right;">
1.696
</td>
<td style="text-align:right;">
7.013
</td>
<td style="text-align:right;">
13.708
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4369
</td>
<td style="text-align:right;">
5460
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
-0.002
</td>
<td style="text-align:right;">
0.175
</td>
<td style="text-align:right;">
-0.348
</td>
<td style="text-align:right;">
0.346
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11602
</td>
<td style="text-align:right;">
5922
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
-0.128
</td>
<td style="text-align:right;">
0.353
</td>
<td style="text-align:right;">
-0.822
</td>
<td style="text-align:right;">
0.574
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
3946
</td>
<td style="text-align:right;">
5263
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
0.237
</td>
<td style="text-align:right;">
0.189
</td>
<td style="text-align:right;">
-0.138
</td>
<td style="text-align:right;">
0.613
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9330
</td>
<td style="text-align:right;">
6316
</td>
</tr>
<tr grouplength="14">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Loneliness</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-8.966
</td>
<td style="text-align:right;">
1.753
</td>
<td style="text-align:right;">
-12.941
</td>
<td style="text-align:right;">
-6.081
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1977
</td>
<td style="text-align:right;">
3121
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-7.584
</td>
<td style="text-align:right;">
1.390
</td>
<td style="text-align:right;">
-10.733
</td>
<td style="text-align:right;">
-5.204
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1995
</td>
<td style="text-align:right;">
3694
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-5.730
</td>
<td style="text-align:right;">
1.008
</td>
<td style="text-align:right;">
-7.900
</td>
<td style="text-align:right;">
-3.966
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1786
</td>
<td style="text-align:right;">
3608
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
-4.065
</td>
<td style="text-align:right;">
0.768
</td>
<td style="text-align:right;">
-5.691
</td>
<td style="text-align:right;">
-2.714
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1769
</td>
<td style="text-align:right;">
3810
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
-2.752
</td>
<td style="text-align:right;">
0.639
</td>
<td style="text-align:right;">
-4.090
</td>
<td style="text-align:right;">
-1.618
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1619
</td>
<td style="text-align:right;">
3201
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
-1.673
</td>
<td style="text-align:right;">
0.568
</td>
<td style="text-align:right;">
-2.865
</td>
<td style="text-align:right;">
-0.620
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1624
</td>
<td style="text-align:right;">
3194
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
0.037
</td>
<td style="text-align:right;">
0.509
</td>
<td style="text-align:right;">
-0.950
</td>
<td style="text-align:right;">
1.045
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1903
</td>
<td style="text-align:right;">
3597
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
0.881
</td>
<td style="text-align:right;">
0.528
</td>
<td style="text-align:right;">
-0.102
</td>
<td style="text-align:right;">
1.979
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1918
</td>
<td style="text-align:right;">
3521
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
1.629
</td>
<td style="text-align:right;">
0.564
</td>
<td style="text-align:right;">
0.590
</td>
<td style="text-align:right;">
2.797
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2060
</td>
<td style="text-align:right;">
3891
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
2.927
</td>
<td style="text-align:right;">
0.652
</td>
<td style="text-align:right;">
1.738
</td>
<td style="text-align:right;">
4.281
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2186
</td>
<td style="text-align:right;">
3992
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
5.245
</td>
<td style="text-align:right;">
0.858
</td>
<td style="text-align:right;">
3.702
</td>
<td style="text-align:right;">
7.082
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2598
</td>
<td style="text-align:right;">
4338
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period
</td>
<td style="text-align:right;">
0.153
</td>
<td style="text-align:right;">
0.181
</td>
<td style="text-align:right;">
-0.200
</td>
<td style="text-align:right;">
0.510
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7045
</td>
<td style="text-align:right;">
5374
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Total Hours
</td>
<td style="text-align:right;">
0.253
</td>
<td style="text-align:right;">
0.342
</td>
<td style="text-align:right;">
-0.397
</td>
<td style="text-align:right;">
0.949
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2218
</td>
<td style="text-align:right;">
3794
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Lockdown Period by Hours
</td>
<td style="text-align:right;">
-0.090
</td>
<td style="text-align:right;">
0.184
</td>
<td style="text-align:right;">
-0.458
</td>
<td style="text-align:right;">
0.268
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6485
</td>
<td style="text-align:right;">
5733
</td>
</tr>
</tbody>
</table>

### Moderation Model

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
term
</th>
<th style="text-align:right;">
Estimate
</th>
<th style="text-align:right;">
Est.Error
</th>
<th style="text-align:right;">
l-95% CI
</th>
<th style="text-align:right;">
u-95% CI
</th>
<th style="text-align:right;">
Rhat
</th>
<th style="text-align:right;">
Bulk_ESS
</th>
<th style="text-align:right;">
Tail_ESS
</th>
</tr>
</thead>
<tbody>
<tr grouplength="23">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Depression</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-1.364
</td>
<td style="text-align:right;">
0.973
</td>
<td style="text-align:right;">
-3.397
</td>
<td style="text-align:right;">
0.444
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6461
</td>
<td style="text-align:right;">
5301
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
0.232
</td>
<td style="text-align:right;">
0.757
</td>
<td style="text-align:right;">
-1.257
</td>
<td style="text-align:right;">
1.729
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9280
</td>
<td style="text-align:right;">
6869
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
0.637
</td>
<td style="text-align:right;">
0.738
</td>
<td style="text-align:right;">
-0.799
</td>
<td style="text-align:right;">
2.095
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9055
</td>
<td style="text-align:right;">
6566
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
1.094
</td>
<td style="text-align:right;">
0.726
</td>
<td style="text-align:right;">
-0.314
</td>
<td style="text-align:right;">
2.545
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8996
</td>
<td style="text-align:right;">
6674
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
1.749
</td>
<td style="text-align:right;">
0.736
</td>
<td style="text-align:right;">
0.360
</td>
<td style="text-align:right;">
3.242
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8759
</td>
<td style="text-align:right;">
6940
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
2.001
</td>
<td style="text-align:right;">
0.750
</td>
<td style="text-align:right;">
0.585
</td>
<td style="text-align:right;">
3.550
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8695
</td>
<td style="text-align:right;">
6876
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
2.262
</td>
<td style="text-align:right;">
0.765
</td>
<td style="text-align:right;">
0.829
</td>
<td style="text-align:right;">
3.824
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8609
</td>
<td style="text-align:right;">
7110
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
2.811
</td>
<td style="text-align:right;">
0.797
</td>
<td style="text-align:right;">
1.296
</td>
<td style="text-align:right;">
4.454
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8394
</td>
<td style="text-align:right;">
6527
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
3.023
</td>
<td style="text-align:right;">
0.806
</td>
<td style="text-align:right;">
1.496
</td>
<td style="text-align:right;">
4.660
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8441
</td>
<td style="text-align:right;">
6499
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
3.234
</td>
<td style="text-align:right;">
0.814
</td>
<td style="text-align:right;">
1.678
</td>
<td style="text-align:right;">
4.884
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8278
</td>
<td style="text-align:right;">
6415
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
3.681
</td>
<td style="text-align:right;">
0.836
</td>
<td style="text-align:right;">
2.085
</td>
<td style="text-align:right;">
5.363
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8170
</td>
<td style="text-align:right;">
6550
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
4.004
</td>
<td style="text-align:right;">
0.857
</td>
<td style="text-align:right;">
2.365
</td>
<td style="text-align:right;">
5.730
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8059
</td>
<td style="text-align:right;">
6643
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
4.465
</td>
<td style="text-align:right;">
0.886
</td>
<td style="text-align:right;">
2.784
</td>
<td style="text-align:right;">
6.273
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7907
</td>
<td style="text-align:right;">
6611
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
4.679
</td>
<td style="text-align:right;">
0.895
</td>
<td style="text-align:right;">
2.976
</td>
<td style="text-align:right;">
6.506
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7854
</td>
<td style="text-align:right;">
6385
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
5.036
</td>
<td style="text-align:right;">
0.917
</td>
<td style="text-align:right;">
3.314
</td>
<td style="text-align:right;">
6.882
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7870
</td>
<td style="text-align:right;">
6497
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
5.305
</td>
<td style="text-align:right;">
0.933
</td>
<td style="text-align:right;">
3.539
</td>
<td style="text-align:right;">
7.206
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7861
</td>
<td style="text-align:right;">
6700
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
5.784
</td>
<td style="text-align:right;">
0.977
</td>
<td style="text-align:right;">
3.946
</td>
<td style="text-align:right;">
7.775
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8092
</td>
<td style="text-align:right;">
6331
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
6.180
</td>
<td style="text-align:right;">
1.010
</td>
<td style="text-align:right;">
4.275
</td>
<td style="text-align:right;">
8.255
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8362
</td>
<td style="text-align:right;">
6513
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
6.694
</td>
<td style="text-align:right;">
1.069
</td>
<td style="text-align:right;">
4.714
</td>
<td style="text-align:right;">
8.885
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8480
</td>
<td style="text-align:right;">
6670
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[20\]
</td>
<td style="text-align:right;">
7.441
</td>
<td style="text-align:right;">
1.198
</td>
<td style="text-align:right;">
5.267
</td>
<td style="text-align:right;">
9.931
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9116
</td>
<td style="text-align:right;">
6774
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
0.014
</td>
<td style="text-align:right;">
0.065
</td>
<td style="text-align:right;">
-0.117
</td>
<td style="text-align:right;">
0.139
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5558
</td>
<td style="text-align:right;">
4870
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.406
</td>
<td style="text-align:right;">
0.102
</td>
<td style="text-align:right;">
0.207
</td>
<td style="text-align:right;">
0.612
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8407
</td>
<td style="text-align:right;">
6330
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
-0.003
</td>
<td style="text-align:right;">
0.008
</td>
<td style="text-align:right;">
-0.018
</td>
<td style="text-align:right;">
0.012
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5594
</td>
<td style="text-align:right;">
4930
</td>
</tr>
<tr grouplength="18">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Anxiety</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
0.712
</td>
<td style="text-align:right;">
0.723
</td>
<td style="text-align:right;">
-0.705
</td>
<td style="text-align:right;">
2.146
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10649
</td>
<td style="text-align:right;">
6005
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
1.266
</td>
<td style="text-align:right;">
0.729
</td>
<td style="text-align:right;">
-0.128
</td>
<td style="text-align:right;">
2.738
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11443
</td>
<td style="text-align:right;">
6143
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
1.752
</td>
<td style="text-align:right;">
0.747
</td>
<td style="text-align:right;">
0.340
</td>
<td style="text-align:right;">
3.246
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10733
</td>
<td style="text-align:right;">
6512
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
2.138
</td>
<td style="text-align:right;">
0.762
</td>
<td style="text-align:right;">
0.697
</td>
<td style="text-align:right;">
3.649
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
10313
</td>
<td style="text-align:right;">
6596
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
2.365
</td>
<td style="text-align:right;">
0.776
</td>
<td style="text-align:right;">
0.904
</td>
<td style="text-align:right;">
3.901
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9986
</td>
<td style="text-align:right;">
6553
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
2.825
</td>
<td style="text-align:right;">
0.808
</td>
<td style="text-align:right;">
1.319
</td>
<td style="text-align:right;">
4.417
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9425
</td>
<td style="text-align:right;">
6504
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
3.055
</td>
<td style="text-align:right;">
0.821
</td>
<td style="text-align:right;">
1.512
</td>
<td style="text-align:right;">
4.674
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9247
</td>
<td style="text-align:right;">
6597
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
3.464
</td>
<td style="text-align:right;">
0.841
</td>
<td style="text-align:right;">
1.888
</td>
<td style="text-align:right;">
5.146
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9013
</td>
<td style="text-align:right;">
6401
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
3.828
</td>
<td style="text-align:right;">
0.864
</td>
<td style="text-align:right;">
2.216
</td>
<td style="text-align:right;">
5.554
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9010
</td>
<td style="text-align:right;">
6355
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
4.026
</td>
<td style="text-align:right;">
0.874
</td>
<td style="text-align:right;">
2.367
</td>
<td style="text-align:right;">
5.749
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9116
</td>
<td style="text-align:right;">
6766
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
4.242
</td>
<td style="text-align:right;">
0.882
</td>
<td style="text-align:right;">
2.587
</td>
<td style="text-align:right;">
6.001
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9052
</td>
<td style="text-align:right;">
6526
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
4.609
</td>
<td style="text-align:right;">
0.900
</td>
<td style="text-align:right;">
2.916
</td>
<td style="text-align:right;">
6.418
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8953
</td>
<td style="text-align:right;">
6605
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
5.082
</td>
<td style="text-align:right;">
0.939
</td>
<td style="text-align:right;">
3.303
</td>
<td style="text-align:right;">
6.945
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9416
</td>
<td style="text-align:right;">
6693
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
5.497
</td>
<td style="text-align:right;">
0.975
</td>
<td style="text-align:right;">
3.671
</td>
<td style="text-align:right;">
7.473
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
9626
</td>
<td style="text-align:right;">
6532
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
7.229
</td>
<td style="text-align:right;">
1.350
</td>
<td style="text-align:right;">
4.836
</td>
<td style="text-align:right;">
10.157
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
11167
</td>
<td style="text-align:right;">
5835
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
-0.024
</td>
<td style="text-align:right;">
0.073
</td>
<td style="text-align:right;">
-0.171
</td>
<td style="text-align:right;">
0.115
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5228
</td>
<td style="text-align:right;">
5204
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.312
</td>
<td style="text-align:right;">
0.097
</td>
<td style="text-align:right;">
0.126
</td>
<td style="text-align:right;">
0.503
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8942
</td>
<td style="text-align:right;">
6273
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
0.002
</td>
<td style="text-align:right;">
0.008
</td>
<td style="text-align:right;">
-0.014
</td>
<td style="text-align:right;">
0.020
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5310
</td>
<td style="text-align:right;">
5103
</td>
</tr>
<tr grouplength="22">
<td colspan="8" style="border-bottom: 1px solid;">
<strong>Stress</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[1\]
</td>
<td style="text-align:right;">
-1.281
</td>
<td style="text-align:right;">
0.807
</td>
<td style="text-align:right;">
-2.906
</td>
<td style="text-align:right;">
0.271
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
6995
</td>
<td style="text-align:right;">
6070
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[2\]
</td>
<td style="text-align:right;">
-0.452
</td>
<td style="text-align:right;">
0.743
</td>
<td style="text-align:right;">
-1.945
</td>
<td style="text-align:right;">
0.983
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8609
</td>
<td style="text-align:right;">
6642
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[3\]
</td>
<td style="text-align:right;">
-0.023
</td>
<td style="text-align:right;">
0.723
</td>
<td style="text-align:right;">
-1.470
</td>
<td style="text-align:right;">
1.402
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8587
</td>
<td style="text-align:right;">
6431
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[4\]
</td>
<td style="text-align:right;">
0.420
</td>
<td style="text-align:right;">
0.715
</td>
<td style="text-align:right;">
-0.995
</td>
<td style="text-align:right;">
1.820
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8235
</td>
<td style="text-align:right;">
6887
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[5\]
</td>
<td style="text-align:right;">
0.611
</td>
<td style="text-align:right;">
0.712
</td>
<td style="text-align:right;">
-0.784
</td>
<td style="text-align:right;">
2.019
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8351
</td>
<td style="text-align:right;">
6816
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[6\]
</td>
<td style="text-align:right;">
1.027
</td>
<td style="text-align:right;">
0.707
</td>
<td style="text-align:right;">
-0.347
</td>
<td style="text-align:right;">
2.423
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8324
</td>
<td style="text-align:right;">
7044
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[7\]
</td>
<td style="text-align:right;">
1.251
</td>
<td style="text-align:right;">
0.710
</td>
<td style="text-align:right;">
-0.132
</td>
<td style="text-align:right;">
2.627
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8185
</td>
<td style="text-align:right;">
6848
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[8\]
</td>
<td style="text-align:right;">
1.612
</td>
<td style="text-align:right;">
0.718
</td>
<td style="text-align:right;">
0.217
</td>
<td style="text-align:right;">
3.035
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8109
</td>
<td style="text-align:right;">
6684
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[9\]
</td>
<td style="text-align:right;">
1.894
</td>
<td style="text-align:right;">
0.725
</td>
<td style="text-align:right;">
0.498
</td>
<td style="text-align:right;">
3.338
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8095
</td>
<td style="text-align:right;">
6717
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[10\]
</td>
<td style="text-align:right;">
2.181
</td>
<td style="text-align:right;">
0.742
</td>
<td style="text-align:right;">
0.743
</td>
<td style="text-align:right;">
3.666
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8229
</td>
<td style="text-align:right;">
7112
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[11\]
</td>
<td style="text-align:right;">
2.469
</td>
<td style="text-align:right;">
0.755
</td>
<td style="text-align:right;">
1.002
</td>
<td style="text-align:right;">
3.976
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8026
</td>
<td style="text-align:right;">
6840
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[12\]
</td>
<td style="text-align:right;">
2.981
</td>
<td style="text-align:right;">
0.777
</td>
<td style="text-align:right;">
1.466
</td>
<td style="text-align:right;">
4.562
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7995
</td>
<td style="text-align:right;">
6887
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[13\]
</td>
<td style="text-align:right;">
3.136
</td>
<td style="text-align:right;">
0.785
</td>
<td style="text-align:right;">
1.614
</td>
<td style="text-align:right;">
4.735
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7960
</td>
<td style="text-align:right;">
6821
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[14\]
</td>
<td style="text-align:right;">
3.564
</td>
<td style="text-align:right;">
0.802
</td>
<td style="text-align:right;">
2.030
</td>
<td style="text-align:right;">
5.214
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7619
</td>
<td style="text-align:right;">
6802
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[15\]
</td>
<td style="text-align:right;">
3.858
</td>
<td style="text-align:right;">
0.821
</td>
<td style="text-align:right;">
2.288
</td>
<td style="text-align:right;">
5.533
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7432
</td>
<td style="text-align:right;">
6546
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[16\]
</td>
<td style="text-align:right;">
4.650
</td>
<td style="text-align:right;">
0.879
</td>
<td style="text-align:right;">
2.931
</td>
<td style="text-align:right;">
6.434
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7397
</td>
<td style="text-align:right;">
6530
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[17\]
</td>
<td style="text-align:right;">
5.032
</td>
<td style="text-align:right;">
0.920
</td>
<td style="text-align:right;">
3.254
</td>
<td style="text-align:right;">
6.889
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7749
</td>
<td style="text-align:right;">
6433
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[18\]
</td>
<td style="text-align:right;">
5.526
</td>
<td style="text-align:right;">
0.976
</td>
<td style="text-align:right;">
3.642
</td>
<td style="text-align:right;">
7.477
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8033
</td>
<td style="text-align:right;">
6598
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept\[19\]
</td>
<td style="text-align:right;">
6.269
</td>
<td style="text-align:right;">
1.100
</td>
<td style="text-align:right;">
4.205
</td>
<td style="text-align:right;">
8.498
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
8661
</td>
<td style="text-align:right;">
6772
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Difference in Hours Played
</td>
<td style="text-align:right;">
-0.004
</td>
<td style="text-align:right;">
0.076
</td>
<td style="text-align:right;">
-0.157
</td>
<td style="text-align:right;">
0.138
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5265
</td>
<td style="text-align:right;">
5555
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Loneliness During Lockdown
</td>
<td style="text-align:right;">
0.284
</td>
<td style="text-align:right;">
0.093
</td>
<td style="text-align:right;">
0.104
</td>
<td style="text-align:right;">
0.469
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
7989
</td>
<td style="text-align:right;">
6554
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Hours by Loneliness
</td>
<td style="text-align:right;">
0.000
</td>
<td style="text-align:right;">
0.009
</td>
<td style="text-align:right;">
-0.017
</td>
<td style="text-align:right;">
0.017
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
5281
</td>
<td style="text-align:right;">
5921
</td>
</tr>
</tbody>
</table>

# Prior Sensitivity Check

The below plots show how sensitive the parameter estimates and Bayes
factors are to different specifications of priors. The models reported
in text had the following priors:

<table>
<colgroup>
<col style="width: 8%" />
<col style="width: 19%" />
<col style="width: 19%" />
<col style="width: 53%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>DAS Main Models</th>
<th>Loneliness Main Model</th>
<th>Moderation Models</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Intercept</td>
<td><em>Student</em>-<em>t</em>(3, 0, 2.5)</td>
<td><em>Student</em>-<em>t</em>(3, 0, 1.5)</td>
<td><em>Student</em>-<em>t</em>(3, 0, 3)</td>
</tr>
<tr class="even">
<td>Beta</td>
<td><em>Normal</em>(0, 1)</td>
<td><em>Normal</em>(0, 1)</td>
<td><em>Normal</em>(0, 1)</td>
</tr>
<tr class="odd">
<td>SD</td>
<td><em>Exponential</em>(1)</td>
<td><em>Exponential</em>(1)</td>
<td><hr /></td>
</tr>
</tbody>
</table>

For each model we fitted 10 models in total (including the reported
model) with different prior specifications for the Beta (slope) terms.
For the main and moderation models these ranged from *Normal*(0, 0.2) to
*Normal*(0, 2) in steps of 0.2, while for the difference models these
ranges from *Normal*(0, 0.1) to *Normal*(0, 1) in steps of 0.1.

In the plots below each model is reported showing the sensitivity of
both the parameter estimates for each term in the model and for the
Bayes factor in support of the point null (i.e. a parameter estimate of
0) relative to the alternative model (i.e. a parameter estimate of ≠ 0).
In all cases, the standard deviation for the prior on the beta parameter
for the models reported in text is indicated with a vertical dotted
line.

Generally, these plots show that the models are not overly sensitive to
the prior specification, giving consistent results for the parameter
estimates and Bayes factors regardless of whether the beta terms have
larger or smaller standard deviations than the models reported.

## Study 1

#### Main Models

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/01_study-01/02_model-checks/prior-sensitivity/main.png)<!-- -->

There is general agreement between models regardless of the magnitude of
the standard deviation for the beta prior for the parameter estimates.
While the Bayes factor generally increases as the standard deviation for
the beta prior increases, this trend is consistent and conclusions do
not change across prior specifications.

#### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/01_study-01/02_model-checks/prior-sensitivity/moderation.png)<!-- -->

As before, conclusions do not change depending upon the magnitude of the
standard deviation for the beta prior.

## Study 2

#### Main Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/02_study-02/02_model-checks/prior-sensitivity/main.png)<!-- -->

As before, conclusions do not change depending upon the magnitude of the
standard deviation for the beta prior.

#### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/02_study-02/02_model-checks/prior-sensitivity/moderation.png)<!-- -->

As before, conclusions do not change depending upon the magnitude of the
standard deviation for the beta prior.

## Study 3

#### Main Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/03_study-03/02_model-checks/prior-sensitivity/main.png)<!-- -->

As before, conclusions do not change depending upon the magnitude of the
standard deviation for the beta prior.

#### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/03_study-03/02_model-checks/prior-sensitivity/moderation.png)<!-- -->

As before, conclusions do not change depending upon the magnitude of the
standard deviation for the beta prior.

# Prior Predictive Check

All plots show the density of the observed data (dark lines) plotted
against 100 random replications from the priors. In all cases relatively
informative priors were used to allow for proper inferences to be draws
using Bayes factors. Generally the priors allow for a wide range of
effects that differ from the observed data, so are thus not too
restrictive. For the main models the replications are close to the
observed data. The moderation models show that while the observed data
is plausible given the priors, the priors perhaps allow too much weight
to large effects and too little weight to middling effects. That said,
the reliability of the models is largely dependent on the posterior
predictive checks, below.

## Study 1

### Main Model

<img src="/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/01_study-01/02_model-checks/prior-predictive/main.png" style="display: block; margin: auto;" />

### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/01_study-01/02_model-checks/prior-predictive/moderation.png)<!-- -->

## Study 2

### Main Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/02_study-02/02_model-checks/prior-predictive/main.png)<!-- -->

#### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/02_study-02/02_model-checks/prior-predictive/moderation.png)<!-- -->

## Study 3

### Main Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/03_study-03/02_model-checks/prior-predictive/main.png)<!-- -->

#### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/03_study-03/02_model-checks/prior-predictive/moderation.png)<!-- -->

### Anxiety

# Posterior Predictive Check

All plots show the density of the observed data (dark lines) plotted
against 100 random replications from the posterior. Generally, the
posterior approximates the observed data very well. Thus the model
estimates are likely to be reliable in all instances.

## Study 1

### Main Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/01_study-01/02_model-checks/posterior-predictive/main.png)<!-- -->

### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/01_study-01/02_model-checks/posterior-predictive/moderation.png)<!-- -->

## Study 2

### Main Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/02_study-02/02_model-checks/posterior-predictive/main.png)<!-- -->

### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/02_study-02/02_model-checks/posterior-predictive/moderation.png)<!-- -->

## Study 3

### Main Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/03_study-03/02_model-checks/posterior-predictive/main.png)<!-- -->

### Moderation Model

![](/Users/glennwilliams/pCloud_Sync/GitHub/covid-gaming/03_plots/03_study-03/02_model-checks/posterior-predictive/moderation.png)<!-- -->
