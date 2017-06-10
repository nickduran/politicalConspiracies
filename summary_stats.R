modComp = function(model1,model2,modname){

    llcomp = anova(model1,model2)
    df1 = llcomp$"Chi Df"[2]
    chi1 = llcomp$"Chisq"[2]
    pr1 = llcomp$"Pr(>Chisq)"[2]
    
    test1 = data.frame(c(df1,chi1,pr1))
    colnames(test1) = modname
    rownames(test1) = c("df","chi","p")
    return(test1)
}

modelout = function(model1,model2,DVname){
    coefs = data.frame(summary(model2)$coef)
    coefs$p = 2*(1-pnorm(abs(coefs$t.value)))    
    gg = coefs
    
    llcomp = anova(model1,model2)
    gg$chidf = llcomp$"Chi Df"[2]
    gg$chisq = llcomp$"Chisq"[2]
    gg$chip = llcomp$"Pr(>Chisq)"[2]
    
    gg$r2m = r.squaredGLMM(model2)[1]
    gg$r2c = r.squaredGLMM(model2)[2]
    
    gg$dvname = c(DVname)
    # gg$ngname = c(NGname)
    # gg$modelname = c(MODname)
    is.num = sapply(gg, is.numeric)
    gg[is.num] = lapply(gg[is.num], round, 3)
    # gg = rbind(gg,"*****")
    return(gg)
}

print_stats = function(lmo) {
    coefs = data.frame(summary(lmo)$coefficient)
    coefs$p = 2*(1-pnorm(abs(coefs$t.value)))
    return(coefs)
}

runContrasts = function(model, contMat, vari1) {
    savesumm = summary(glht(model, contMat), test = adjusted("none"))$test 
    mtests = cbind(savesumm$coefficients, savesumm$sigma, savesumm$tstat, savesumm$pvalues)
    colnames(mtests) = c("Estimate", "Std. Error", "t value", "p-values")
    mtests2 = data.frame(mtests)
    # mtests2$R2 = r.squaredGLMM(model)[2]
    mtests2$DV = vari1
    return(mtests2)
}