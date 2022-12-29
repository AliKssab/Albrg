
import UIKit

class DataModel {
    var body: String
    var body1: String
     var body2: String
    var isExpanded: Bool = false
    
    init(body: String) {
        self.body = body
        self.body1 = body
        self.body2 = body
        
    }
    
}
class ViewControllera: UIViewController {
    
    @IBOutlet weak var buckbuton: UIButton!
    @IBOutlet weak var myimage: UIImageView!
    @IBOutlet weak var labelnamber: UILabel!
    @IBOutlet weak var labelarb: UILabel!
    @IBOutlet weak var tableView: UITableView!
   
    var inits = 0
     var arabicName = ["تحاليل سكر الجلوكوز" , "تحليل الهيموجلوبين السكرى(السكر التراكمي)" , "تحليل الزُلال (الألبومين) فى البول"]
     var arabicName1 = ["تحليل ملف الدهون" , "تحليل صورة الدم الكاملة" , "تحليل تباين خلابا الدم البيضاء" , "تحليل تعداد خلايا الدم البيضاء" , "اختبار سرعة الترسيب في الدم" , "تحليل الهيموجلوبين" ,"تحليل الهيماتوكريت" , "مؤشرات(دلائل) خلايا الدم الحمراء" , "تحليل وطائف الصفائح الدموية", "تحليل تعدد الصفائح الدموية" , "تحليل وظائف الكبد" , "تحليل وظائف الكلي" ,"تحليل البول" , "تحليل هرمون الثايرونين ثلاثي اليود" ,"تحليل هرمون الثايروكسين" ,"تحليل الهرمون المنبه للغدة الدرقية" , "تحليل سكر الجلوكوز" , "تحليل الهيموجلوبين السكري(السكر التراكمي)" ,"تحليل فيتامين(D)" , "تحليل نسية الأملاح" , "تحليل الفجوة الأنبونية" ]
    var arabicName2 = ["تحليل ملف الدهون" , "تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء" , "اختبار سرعة الترسيب في الدم " , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت","مؤشرات(دلائل خلايا الدم الحمراء)" ,"تحليل وطائف الصفائح الدموية" ,"تحليل تِعداد الصفائح الدمويّة", "تحليل وظائف الكبد " , "تحليل وظائف الكلي","تحليل البول" ,"تحليل هرمون الثايرونين ثلاثي اليود" , "تحليل هرمون الثايروكسين" , "تحليل الهرمون المنبه للغدة الدرقية","تحليل سكر الجلوكوز" ,"تحليل الهيموجلوبين السكري (السكر التراكمي) " , "تحليل فيتامين(B١٢)" , "تحليل فيتامين(D)","تحليل الحديد ", "تحليل الفولات / حمض الفوليك" ]
     var arabicName3 = ["تحليل هرمون الثايرونين ثلاثي اليود" , "تحليل هرمون الثايروكسين" , "تحليل الهرمون المنبه للغدة الدرقية"]
     var arabicName4 = ["تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء" , "تحليل تعداد خلايا الدم البيضاء","اختبار سرعةالترسيب في الدم" , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت" , "مؤشرات (دلائل) خلايا الدم الحمراء","تحليل وظائف الصفائح الدموية" ,"تحليل تعدادالصفائح الدموية" , "تحليل بروتن(CEA)كدلالة أورام" , "تحليل بروتينات المكملات المناعية","اختبار الجسم المستضاد للسرطان (CA١٢٥)","اختبار الجسم المستضاد للسرطان(CA٩-١٩)" ,"اختبار الجسم المستضاد النوعي لغدة البروستاتا" ]
    var arabicName5 = ["تحليل ملف الدهون" , "تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء" , "اخبار سرعة الترسيب في الدم" , "تحليل الهيموجلوبين" , "تحليل الهيماتوكرين","مؤشرات (دلائل) خلايا الدم الحمراء" ,"تحليل وظائف الصفائح الدموية" ,"تحليل تعداد الصفائح الدموية", "تحليل وظائف الكبد" , "تحليل وظائف الكلي","تحليل البول" ,"تحليل هرمون الثايرونين ثلاثي اليود","تحليل هرمون الثايروكسين" , "تحليل الهرمون المنبه للغدة الدرقية" , "تحليل سكر الجلوكوز","تحليل الهيموجلوبين السكري(السكر التراكمي)" ,"تحليل فيتامين(B12)" , "تحليل فيتامين(D)" , "تحليل الحمض الأميني هوموسيستين"]
     var arabicName6 = ["تحليل وظائف الكلي" , "تحليل البول" , "تحليل صورة الدم الكاملة","تحليل تباين خلايا الدم البيضاء" , "تحليل تعداد خلايا الدم البيضاء" , "اختبار سرعة الترسيب في الدم" , "تحليل الهيموجلوبين","تحليل الهيماتوكريت" ,"مؤشرات(دلائل) خلايا الدم الحمراء" ,"تحليل وظائف الصفائح الدموية", "تحليل تعداد الصفائح الدموية" ]
     var arabicName7 = ["تحليل وظائف الكبد" , "تحليل نسبة الألبومين/الجلوبولين" , "تحليل صورة الدم الكاملة"]
     var arabicName8 = ["تحليل وظئف الكبد " , "تحليل نسبة الألبومين/الجلوبولين" , "تحليل الالتهاب الكبدي الفيروسي(B)","تحليل الالتهاب الكبدي الفيروسي(C)" , "تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء" ,"تحليل تعداد خلايا الدم البيضاء", "اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين","تحليل الهيماتوكريت" ,"مؤشرات(دلائل) خلايا الدم الحمراء" , "تحليل وظائف الصفائح الدموية" , "تحليل تعداد الصفائح الدموية"]
     var arabicName9 = ["تحليل الكالسيوم " , "تحليل الفوسفور" , "تحليل فيتامين(D)"]
     var arabicName10 = ["تحليل ملف الدهون" , "تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء" , "اختبار سرعة الترسيب في الدم" , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء" ,"تحليل تعداد الصفائح الدموية","تحليل تعداد الصفائح الدموية" , "تحليل وظئف الكبد " , "تحليل وظائف الكلي","تحليل البول" ,"تحليل هرمون الثايرونين ثلاثي اليود" , "تحليل هرمون الثايروكسين" , "تحليل الهرمون المنبه للغدة الدرقية","تحليل سكر الجلوكوز" ,"تحليل الهيموجلوبين السكري (السكر التراكمي) " , "تحليل فيتامين(D)" , "تحليل العامل الروماتويدي","اختبار الأجسام المضادة للبكتيريا السبحية", "اختبار الأجسام المضادة للببتيد السيتروليني" , "تحليل حمض اليوريك/البوليك" ]
     var arabicName11 = ["تحليل جرثومة المعدة" , "تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء" , "اختبار سرعة الترسيب في الدم " , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء" ,"تحليل وظائف الصفائح الدموية" , "تحليل تعداد الصفائح الدموية" , "تحليل وظئف الكبد ","تحليل نسبة الألبومين/الجلوبولين"]
     var arabicName12 = ["تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء" , "تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم " , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت" , "مؤشرات(دلائل) خلايا الدم الحمراء","تحليل وظائف الصفائح الدموية" ,"تحليل تعداد الصفائح الدموية" , "تحليل البول" , "تحليل عدوي حمي الضنك","اختبار فيدال"]
     var arabicName13 = ["تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء" , "تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم" , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت" , "مؤشرات(دلائل) خلايا الدم الحمراء","تحليل وظائف الصفائح الدموية" ,"تحليل تعداد الصفائح الدموية" , "تحليل وظئف الكبد " , "تحليل نسبة الألبومين/الجلوبولين","تحليل البول"]
     var arabicName14 = ["تحليل الهرمون المنبه للجريب" , "تحليل الهرمون اللوتيني" , "تحليل هرمون البرولاكتين","تحليل  هرمون التستوستيرون" , "تحليل الهرمون المنبه للغدة الدرقية" ]
     var arabicName15 = ["تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء" , "تحليل تعداد خلايا الدم البيضاء","اختبار سرعة الترسيب في الدم " , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت" , "مؤشرات(دلائل) خلايا الدم الحمراء","تحليل وظائف الصفائح الدموية" ,"تحليل تعداد الصفائح الدموية" , "تحليل البول" , "تحليل بروتين سي التفاعلي",]
     var arabicName16 = ["تحليل الالتهاب الكبدي الفيروسي(B)" , "تحليل الالتهاب الكبدي الفيروسي(C)" , "اختبار فيروس نقص المناعة البشرية(الإيدز)" ,"تحاليل عدوي الزهري"]
     var arabicName17 = ["تحليل صورة الدم الكاملة" , "تحليل وظائف الكبد " , "تحليل وظائف الكلي","تحليل البول" , "تحليل فيتامين (B١٢" , "تحليل فيتامين(D)"]
     var arabicName18 = ["تحليل ملف الدهون" , "تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء","تحليل تعداد خلايا الدم البيضاء" , "اختبار سرعة الترسيب في الدم" , "تحليل الهيموجلوبين" , "تحليل الهيماتوكريت","مؤشرات(دلائل) خلايا الدم الحمراء" ,"تحليل وظائف الصفائح الدموية" , "تحليل تعداد الصفائح الدموية" , "تحليل وظائف الكبد ","تحليل هرمون الثايرونين ثلاثي اليود" ,"تحليل هرمون الثايروكسين" , "تحليل الهرمون المنبه للغدة الدرقية" , "تحليل سكر الجلوكوز","تحليل الهيموجلوبين السكري (السكر التراكمي) " ,"تحليل بروتين سي التفاعلي عالي الحساسية"]
     var arabicName19 = ["اختبار تحديد فصيلة الدم" , "تحليل هرمون الحمل" , "تحليل ملف الدهون","تحليل صورة الدم الكاملة" , "تحليل تباين خلايا الدم البيضاء" , "تحليل تعداد خلايا الدم البيضاء" , "اختبار سرعة الترسيب في الدم ","تحليل الهيموجلوبين" ,"تحليل الهيماتوكريت" , "مؤشرات(دلائل) خلايا الدم الحمراء" , "تحليل وظائف الصفائح الدموية","تحليل تعداد الصفائح الدموية" ,"تحليل وظائف الكبد" , "تحليل وظائف الكلي" , "تحليل البول","تحليل هرمون الثايرونين ثلاثي اليود" ,"تحليل هرمون الثايروكسين" , "تحليل الهرمون المنبه للغدة الدرقية" , "تحاليل سكر الجلوكوز","تحليل الهيموجلوبين السكري (السكر التراكمي)", "تحاليل الحديد" , "تحليل الفولات / حمض الفوليك" , "تحليل الالتهاب الكبدي الفيروسي(B)" , "تحليل الالتهاب الكبدي الفيروسي(C)" , "اختبار فيروس نقص المناعة البشرية(الإيدز)" ,"تحاليل عدوي الزهري" , "تحليل فيتامين (B١٢)" ]
    
    
       var englishName = ["Glucose Tests" , "Hemoglobin A1c (HbA1c)" , "Microalbumin"]
     var englishName1 = ["Lipid Profile"
        , "Complete Blood Count (CBC)"
        , "White Blood Cell (WBC) Count Differential"
        , "White Blood Cell (WBC) Count; Leukocyte Count"
        , "Erythrocyte Sedimentation Rate (ESR)"
        , "Hemoglobin (Hb)"
        , "Hematocrit (Hct)"
        , "Red Cell Indices"
        , "Platelet Function Tests (PFT)"
        , "Platelet Count"
        , "Hepatic Function Panel; Liver Panel"
        , "Renal (Kidney) Function Panel"
        , "Urinalysis; Urine Test",
          "Triiodothyronine; Free T3 and Total T3"
        , "Thyroxine; Free T4"
        , "Thyroid-stimulating Hormone (TSH); Thyrotropin"
        , "Glucose Tests"
        , "Hemoglobin A1c (HbA1c)" , "Vitamin D Tests"
        , "Electrolytes"
        , "Anion Gap" ]
     var englishName2 = ["Lipid Profile","Complete Blood Count (CBC)" ,"White Blood Cell (WBC) Count Differential","White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)","Hemoglobin (Hb)","Hematocrit (Hct)","Red Cell Indices","Platelet Function Tests (PFT)","Platelet Count","Hepatic Function Panel; Liver Panel","Renal (Kidney) Function Panel","Urinalysis; Urine Test","Triiodothyronine; Free T3 and Total T3","Thyroxine; Free T4","Thyroid-stimulating Hormone (TSH); Thyrotropin","Glucose Tests","Hemoglobin A1c (HbA1c)","Vitamin B12","Vitamin D Tests","Iron (Fe) Tests","Folate / Folic Acid"]
     var englishName3 = ["Triiodothyronine; Free T3 and Total T3" , "Thyroxine; Free T4" , "Thyroid-stimulating Hormone (TSH); Thyrotropin"]
     var englishName4 = ["Complete Blood Count (CBC)" , "White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count", "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)", "Hematocrit (Hct)" , "Red Cell Indices", "Platelet Function Tests (PFT)" , "Platelet Count", "Carcinoembryonic Antigen (CEA)" , "Complement Component", "Cancer Antigen 125 Tumor Marker" , "Cancer Antigen 19-9", "Prostate Specific Antigen (PSA)" ]
     var englishName5 = ["Lipid Profile" , "Complete Blood Count (CBC)" , "White Blood Cell (WBC) Count Differential", "White Blood Cell (WBC) Count; Leukocyte Count" , "Erythrocyte Sedimentation Rate (ESR)", "Hemoglobin (Hb)" , "Hematocrit (Hct)", "Red Cell Indices" , "Platelet Function Tests (PFT)", "Platelet Count" , "Hepatic Function Panel; Liver Panel", "Renal (Kidney) Function Panel" , "Urinalysis; Urine Test", "Triiodothyronine; Free T3 and Total T3" , "Thyroxine; Free T4", "Thyroid-stimulating Hormone (TSH); Thyrotropin" , "Glucose Tests", "Hemoglobin A1c (HbA1c)" , "Vitamin B12", "Vitamin D Tests" , "Homocysteine"]
     var englishName6 = ["Renal (Kidney) Function Panel" , "Urinalysis; Urine Test" , "Complete Blood Count (CBC)", "White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count", "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)", "Hematocrit (Hct)" , "Red Cell Indices", "Platelet Function Tests (PFT)" , "Platelet Count"]
     var englishName7 = ["Hepatic Function Panel; Liver Panel" , "Albumin/Globulin (A/G) Ratio" , "Complete Blood Count (CBC)"]
     var englishName8 = ["Hepatic Function Panel; Liver Panel" , "Albumin/Globulin (A/G) Ratio" , "Hepatitis B Testing", "Hepatitis C Testing" , "Complete Blood Count (CBC)", "White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count", "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)", "Hematocrit (Hct)" , "Red Cell Indices", "Platelet Function Tests (PFT)" , "Platelet Count"]
     var englishName9 = ["Calcium" , "Phosphorus (PO4)" , "Vitamin D Tests"]
     var englishName10 = ["Lipid Profile" , "Complete Blood Count (CBC)" , "White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count", "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)" , "Hematocrit (Hct)" , "Red Cell Indices", "Platelet Function Tests (PFT)" , "Platelet Count", "Hepatic Function Panel; Liver Panel" , "Renal (Kidney) Function Panel", "Urinalysis; Urine Test" , "Triiodothyronine; Free T3 and Total T3", "Thyroxine; Free T4" , "Thyroid-stimulating Hormone (TSH); Thyrotropin", "Glucose Tests" , "Hemoglobin A1c (HbA1c)", "Vitamin D Tests" , "Rheumatoid Factor (RF)", "Antistreptolysin O Titer (ASO)" , "Cyclic Citrullinated Peptide (CCP) Antibody", "Uric Acid (UA); Urate"  ]
     var englishName11 = ["Helicobacter pylori Testing" , "Complete Blood Count (CBC)" ,"White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count" , "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)" , "Hematocrit (Hct)" , "Red Cell Indices" , "Platelet Function Tests (PFT)" , "Platelet Count" , "Hepatic Function Panel; Liver Panel" , "Albumin/Globulin (A/G) Ratio"  ]
     var englishName12 = ["Complete Blood Count (CBC)" , "White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count" , "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)" , "Hematocrit (Hct)" ,"Red Cell Indices" , "Platelet Function Tests (PFT)" , "Platelet Count" , "Urinalysis; Urine Test" , "Dengue Fever Testing" , "Widal Test" ]
     var englishName13 = ["Complete Blood Count (CBC)" , "White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count", "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)", "Hematocrit (Hct)" , "Red Cell Indices", "Platelet Function Tests (PFT)" , "Platelet Count", "Hepatic Function Panel; Liver Panel" , "Albumin/Globulin (A/G) Ratio", "Urinalysis; Urine Test" ]
     var englishName14 = ["Follicle-stimulating Hormone (FSH)" , "Luteinizing Hormone (LH)" , "Prolactin (PRL)", "Testosterone" , "Thyroid-stimulating Hormone (TSH); Thyrotropin"]
     var englishName15 = ["Complete Blood Count (CBC)" , "White Blood Cell (WBC) Count Differential" , "White Blood Cell (WBC) Count; Leukocyte Count","Erythrocyte Sedimentation Rate (ESR)", "Hemoglobin (Hb)" , "Hematocrit (Hct)", "Red Cell Indices" , "Platelet Function Tests (PFT)", "Platelet Count" , "Urinalysis; Urine Test", "C-Reactive Protein (CRP)" ]
     var englishName16 = ["Hepatitis B Testing" , "Hepatitis C Testing" , "Human Immunodeficiency Virus (HIV) Antibody and Antigen (p24)", "Syphilis Tests"]
     var englishName17 = ["Complete Blood Count (CBC)" , "Hepatic Function Panel; Liver Panel" , "Renal (Kidney) Function Panel", "Urinalysis; Urine Test" , "Vitamin B12", "Vitamin D Tests"]
     var englishName18 = ["Lipid Profile" ,
                          "Complete Blood Count (CBC)" ,
                          "White Blood Cell (WBC) Count Differential",
                          "White Blood Cell (WBC) Count; Leukocyte Count" ,
                          "Erythrocyte Sedimentation Rate (ESR)",
                          "Hemoglobin (Hb)",
                          "Hematocrit (Hct)" ,
                          "Red Cell Indices",
                          "Platelet Function Tests (PFT)" ,
                          "Platelet Count",
                          "Hepatic Function Panel; Liver Panel",
                          "Triiodothyronine; Free T3 and Total T3" ,
                          "Thyroxine; Free T4",
                          "Thyroid-stimulating Hormone (TSH); Thyrotropin" ,
                          "Glucose Tests",
                          "Hemoglobin A1c (HbA1c)",
                          "High-sensitivity C-reactive Protein (hs-CRP)" ]
     var englishName19 = ["Blood Typing; ABO Group and Rh Type" , "hCG Pregnancy" , "Lipid Profile", "Complete Blood Count (CBC)" , "White Blood Cell (WBC) Count Differential", "White Blood Cell (WBC) Count; Leukocyte Count", "Erythrocyte Sedimentation Rate (ESR)" , "Hemoglobin (Hb)", "Hematocrit (Hct)" , "Red Cell Indices", "Platelet Function Tests (PFT)", "Platelet Count" , "Hepatic Function Panel; Liver Panel", "Renal (Kidney) Function Panel" , "Urinalysis; Urine Test", "Triiodothyronine; Free T3 and Total T3", "Thyroxine; Free T4" , "Thyroid-stimulating Hormone (TSH); Thyrotropin" , "Glucose Tests", "Hemoglobin A1c (HbA1c)" , "Iron (Fe) Tests", "Folate / Folic Acid" , "Hepatitis B Testing", "Hepatitis C Testing", "Human Immunodeficiency Virus (HIV) Antibody and Antigen (p24)" , "Syphilis Tests", "Vitamin B12" ]
    
    var urle = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/microalbumin/microalbumin.html"]
    var urle1 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html","http://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html","https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/electrolytes/electrolytes.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/anion%20gap/anion%20gap.html"]
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    var urle2 = [ "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html"
        ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html"
        , "http://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html"
        ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/iron%20tests/iron%20tests.html"
        , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/folate/folate.html" ]
    var urle3 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html"]
    var urle4 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cea/cea.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/complement/complement.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ca-125/ca-125.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ca%2019-9/ca%2019-9.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/psa/psa.html" ]
    var urle5 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/homocysteine/homocysteine.html"]
    var urle6 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html"]
    var urle7 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ag%20ratio/ag%20ratio.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html"]
    var urle8 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ag%20ratio/ag%20ratio.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hepatitis%20b/hepatitis%20b.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hepatitis%20c/hepatitis%20c.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "http://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html"]
    var urle9 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/calcium/calcium.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/phosphorus/phosphorus.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html"]
    var urle10 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver panel/liver panel.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/rheumatoid%20factor/rheumatoid%20factor.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/aso/aso.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/anti-ccp/anti-ccp.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/uric%20acid/uric%20acid.html" ]
    var urle11 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/h.pylori/h.pylori.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "http://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ag%20ratio/ag%20ratio.html" ]
    var urle12 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" ,"https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/dengue%20fever%20testing/dengue%20fever%20testing.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/widal%20test/widal%20test.html" ]
    var urle13 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/ag%20ratio/ag%20ratio.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html" ]
    var urle14 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/fsh/fsh.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lh/lh.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/prolactin/prolactin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/testosterone/testosterone.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html"]
    var urle15 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/crp/crp.html"]
    var urle16 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hepatitis%20b/hepatitis%20b.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hepatitis%20c/hepatitis%20c.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hiv%20screening/hiv%20screening.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/syphilis%20tests/syphilis%20tests.html"]
    var urle17 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20d/vitamin%20d.html"]
    var urle18 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/crp%20high-sensitivity/crp%20high-sensitivity.html" ]
    var urle19 = ["https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/blood%20typing/blood%20typing.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hcg%20pregnancy/hcg%20pregnancy.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/lipid%20profile/lipid%20profile.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/cbc/cbc.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc%20differential/wbc%20differential.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/wbc/wbc.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/esr/esr.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hemoglobin/hemoglobin.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hematocrit/hematocrit.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/mcv/mcv.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20function%20tests/platelet%20function%20tests.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/platelet%20count/platelet%20count.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/liver%20panel/liver%20panel.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/renal%20panel/renal%20panel.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/urinalysis/urinalysis.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t3/t3.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/t4/t4.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/tsh/tsh.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/glucose/glucose.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/a1c/a1c.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/iron%20tests/iron%20tests.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/folate/folate.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hepatitis%20b/hepatitis%20b.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hepatitis%20c/hepatitis%20c.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/hiv%20screening/hiv%20screening.html" , "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/syphilis%20tests/syphilis%20tests.html", "https://www.alabdelaziz.com/mobile_app_feed/alborg/tests_website/vitamin%20b12/vitamin%20b12.html" ]
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    var arrayOfStrings = [String]()
    var arrayOfStrings1 = [String]()
     var arrayOfStrings2 = [String]()
     var arrayOfStrings3 = [String]()
     var arrayOfStrings4 = [String]()
     var arrayOfStrings5 = [String]()
     var arrayOfStrings6 = [String]()
     var arrayOfStrings7 = [String]()
     var arrayOfStrings8 = [String]()
     var arrayOfStrings9 = [String]()
     var arrayOfStrings10 = [String]()
     var arrayOfStrings11 = [String]()
     var arrayOfStrings12 = [String]()
     var arrayOfStrings13 = [String]()
     var arrayOfStrings14 = [String]()
     var arrayOfStrings15 = [String]()
     var arrayOfStrings16 = [String]()
     var arrayOfStrings17 = [String]()
     var arrayOfStrings18 = [String]()
     var arrayOfStrings19 = [String]()
    
    
    
    
    
    
    
    var newarrays = [DataModel]()
    var newarrays1 = [DataModel]()
    var newarrays2 = [DataModel]()
    var newarrays3 = [DataModel]()
    var newarrays4 = [DataModel]()
    var newarrays5 = [DataModel]()
    var newarrays6 = [DataModel]()
    var newarrays7 = [DataModel]()
    var newarrays8 = [DataModel]()
    var newarrays9 = [DataModel]()
    var newarrays10 = [DataModel]()
    var newarrays11 = [DataModel]()
    var newarrays12 = [DataModel]()
    var newarrays13 = [DataModel]()
    var newarrays14 = [DataModel]()
    var newarrays15 = [DataModel]()
    var newarrays16 = [DataModel]()
    var newarrays17 = [DataModel]()
    var newarrays18 = [DataModel]()
    var newarrays19 = [DataModel]()
    
    
    
    
    
    
    
    
      var newarraya = [DataModel]()
      var newarraya1 = [DataModel]()
      var newarraya2 = [DataModel]()
      var newarraya3 = [DataModel]()
      var newarraya4 = [DataModel]()
      var newarraya5 = [DataModel]()
      var newarraya6 = [DataModel]()
      var newarraya7 = [DataModel]()
      var newarraya8 = [DataModel]()
      var newarraya9 = [DataModel]()
      var newarraya10 = [DataModel]()
      var newarraya11 = [DataModel]()
      var newarraya12 = [DataModel]()
      var newarraya13 = [DataModel]()
      var newarraya14 = [DataModel]()
      var newarraya15 = [DataModel]()
      var newarraya16 = [DataModel]()
      var newarraya17 = [DataModel]()
      var newarraya18 = [DataModel]()
      var newarraya19 = [DataModel]()
    
    
    
    
    
    
    
    
    var array = [DataModel]()
    var array1 = [DataModel]()
    var array2 = [DataModel]()
    var array3 = [DataModel]()
    var array4 = [DataModel]()
    var array5 = [DataModel]()
    var array6 = [DataModel]()
    var array7 = [DataModel]()
    var array8 = [DataModel]()
    var array9 = [DataModel]()
    var array10 = [DataModel]()
    var array11 = [DataModel]()
    var array12 = [DataModel]()
    var array13 = [DataModel]()
    var array14 = [DataModel]()
    var array15 = [DataModel]()
    var array16 = [DataModel]()
    var array17 = [DataModel]()
    var array18 = [DataModel]()
    var array19 = [DataModel]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       loadData()
      didFetchData()
//        myimage.image = myimags[IndexPath.item]
        buckbuton.clipsToBounds = true
        buckbuton.layer.borderColor = UIColor.white.cgColor
        buckbuton.layer.borderWidth = 3
        buckbuton.layer.cornerRadius = 20
    }
    
    private func loadData() {
        let reader = TxtReader(filePrefix: "diabetes_", fileExtension: "txt", from: 1, to: 3)
        reader.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings = arrayOfStrings
            self.didFetchData()
        }
        
        
        
        let reader1 = TxtReader(filePrefix: "hypertension_", fileExtension: "txt", from: 1, to: 21)
        reader1.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings1 = arrayOfStrings
            self.didFetchData()
        }
        
        let reader2 = TxtReader(filePrefix: "anemia_", fileExtension: "txt", from: 1, to: 22)
        reader2.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings2 = arrayOfStrings
            self.didFetchData()
        }
        let reader3 = TxtReader(filePrefix: "thyroid_", fileExtension: "txt", from: 1, to: 3)
        reader3.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings3 = arrayOfStrings
            self.didFetchData()
        }
        let reader4 = TxtReader(filePrefix: "cancer_", fileExtension: "txt", from: 1, to:14)
        reader4.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings4 = arrayOfStrings
            self.didFetchData()
        }
        let reader5 = TxtReader(filePrefix: "heart_", fileExtension: "txt", from: 1, to: 21)
        reader5.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings5 = arrayOfStrings
            self.didFetchData()
        }
        let reader6 = TxtReader(filePrefix: "kidney_", fileExtension: "txt", from: 1, to: 11)
        reader6.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings6 = arrayOfStrings
            self.didFetchData()
        }
        let reader7 = TxtReader(filePrefix: "liver_", fileExtension: "txt", from: 1, to: 3)
        reader7.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings7 = arrayOfStrings
            self.didFetchData()
        }
        let reader8 = TxtReader(filePrefix: "hepatitis_", fileExtension: "txt", from: 1, to: 13)
        reader8.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings8 = arrayOfStrings
            self.didFetchData()
        }
        let reader9 = TxtReader(filePrefix: "bones_", fileExtension: "txt", from: 1, to: 3)
        reader9.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings9 = arrayOfStrings
            self.didFetchData()
        }
        let reader10 = TxtReader(filePrefix: "joints_", fileExtension: "txt", from: 1, to: 23)
        reader10.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings10 = arrayOfStrings
            self.didFetchData()
        }
        let reader11 = TxtReader(filePrefix: "digestion_", fileExtension: "txt", from: 1, to: 12)
        reader11.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings11 = arrayOfStrings
            self.didFetchData()
        }
        let reader12 = TxtReader(filePrefix: "fever_", fileExtension: "txt", from: 1, to: 12)
        reader12.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings12 = arrayOfStrings
            self.didFetchData()
        }
        let reader13 = TxtReader(filePrefix: "jaundice_", fileExtension: "txt", from: 1, to: 12)
        reader13.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings13 = arrayOfStrings
            self.didFetchData()
        }
        let reader14 = TxtReader(filePrefix: "hormones_", fileExtension: "txt", from: 1, to: 5)
        reader14.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings14 = arrayOfStrings
            self.didFetchData()
        }
        let reader15 = TxtReader(filePrefix: "infection_", fileExtension: "txt", from: 1, to: 11)
        reader15.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings15 = arrayOfStrings
            self.didFetchData()
        }
        let reader16 = TxtReader(filePrefix: "sexual_diseases_", fileExtension: "txt", from: 1, to: 4)
        reader16.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings16 = arrayOfStrings
            self.didFetchData()
        }
        let reader17 = TxtReader(filePrefix: "vitamins_", fileExtension: "txt", from: 1, to: 6)
        reader17.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings17 = arrayOfStrings
            self.didFetchData()
        }
        let reader18 = TxtReader(filePrefix: "obesity_", fileExtension: "txt", from: 1, to: 17)
        reader18.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings18 = arrayOfStrings
            self.didFetchData()
        }
        let reader19 = TxtReader(filePrefix: "pregnancy_", fileExtension: "txt", from: 1, to: 27)
        reader19.read { [weak self] (success, arrayOfStrings) in
            guard let self = self else { return }
            guard let arrayOfStrings = arrayOfStrings else { return }
            
            self.arrayOfStrings19 = arrayOfStrings
            self.didFetchData()
        }
        
      
    }
   
    private func didFetchData() {
        newarraya = arabicName.map({
            DataModel(body: $0)
        })
        
        newarraya1 = arabicName1.map({
            DataModel(body: $0)
        })
       
        newarraya2 = arabicName2.map({
            DataModel(body: $0)
        })
        newarraya3 = arabicName3.map({
            DataModel(body: $0)
        })
        newarraya4 = arabicName4.map({
            DataModel(body: $0)
        })
        newarraya5 = arabicName5.map({
            DataModel(body: $0)
        })
        newarraya6 = arabicName6.map({
            DataModel(body: $0)
        })
        newarraya7 = arabicName7.map({
            DataModel(body: $0)
        })
        newarraya8 = arabicName8.map({
            DataModel(body: $0)
        })
        newarraya9 = arabicName9.map({
            DataModel(body: $0)
        })
        newarraya10 = arabicName10.map({
            DataModel(body: $0)
        })
        newarraya11 = arabicName11.map({
            DataModel(body: $0)
        })
        newarraya12 = arabicName12.map({
            DataModel(body: $0)
        })
        newarraya13 = arabicName13.map({
            DataModel(body: $0)
        })
        newarraya14 = arabicName14.map({
            DataModel(body: $0)
        })
        newarraya15 = arabicName15.map({
            DataModel(body: $0)
        })
        newarraya16 = arabicName16.map({
            DataModel(body: $0)
        })
        newarraya17 = arabicName17.map({
            DataModel(body: $0)
        })
        newarraya18 = arabicName18.map({
            DataModel(body: $0)
        })
        newarraya19 = arabicName19.map({
            DataModel(body: $0)
        })
        
        
        
        
        
        
        
        
        newarrays = englishName.map({
            DataModel(body: $0)
        })
        newarrays1 = englishName1.map({
            DataModel(body: $0)
        })
        newarrays2 = englishName2.map({
            DataModel(body: $0)
        })
        newarrays3 = englishName3.map({
            DataModel(body: $0)
        })
        newarrays4 = englishName4.map({
            DataModel(body: $0)
        })
        newarrays5 = englishName5.map({
            DataModel(body: $0)
        })
        newarrays6 = englishName6.map({
            DataModel(body: $0)
        })
        newarrays7 = englishName7.map({
            DataModel(body: $0)
        })
        newarrays8 = englishName8.map({
            DataModel(body: $0)
        })
        newarrays9 = englishName9.map({
            DataModel(body: $0)
        })
        newarrays10 = englishName10.map({
            DataModel(body: $0)
        })
        newarrays11 = englishName11.map({
            DataModel(body: $0)
        })
        newarrays12 = englishName12.map({
            DataModel(body: $0)
        })
        newarrays13 = englishName13.map({
            DataModel(body: $0)
        })
        newarrays14 = englishName14.map({
            DataModel(body: $0)
        })
        newarrays15 = englishName15.map({
            DataModel(body: $0)
        })
        newarrays16 = englishName16.map({
            DataModel(body: $0)
        })
        newarrays17 = englishName17.map({
            DataModel(body: $0)
        })
        newarrays18 = englishName18.map({
            DataModel(body: $0)
        })
        newarrays19 = englishName19.map({
            DataModel(body: $0)
        })
       
        
        
        
        
        
        
        
        
        
        
        
        array = arrayOfStrings.map({
            DataModel(body: $0)
        })
        
        array1 = arrayOfStrings1.map({
            DataModel(body: $0)
        })
        
        array2 = arrayOfStrings2.map({
            DataModel(body: $0)
        })
        array3 = arrayOfStrings3.map({
            DataModel(body: $0)
        })
        array4 = arrayOfStrings4.map({
            DataModel(body: $0)
        })
        array5 = arrayOfStrings5.map({
            DataModel(body: $0)
        })
        array6 = arrayOfStrings6.map({
            DataModel(body: $0)
        })
        array7 = arrayOfStrings7.map({
            DataModel(body: $0)
        })
        array8 = arrayOfStrings8.map({
            DataModel(body: $0)
        })
        array9 = arrayOfStrings9.map({
            DataModel(body: $0)
        })
        array10 = arrayOfStrings10.map({
            DataModel(body: $0)
        })
        array11 = arrayOfStrings11.map({
            DataModel(body: $0)
        })
        array12 = arrayOfStrings12.map({
            DataModel(body: $0)
        })
        array13 = arrayOfStrings13.map({
            DataModel(body: $0)
        })
        array14 = arrayOfStrings14.map({
            DataModel(body: $0)
        })
        array15 = arrayOfStrings15.map({
            DataModel(body: $0)
        })
        array16 = arrayOfStrings16.map({
            DataModel(body: $0)
        })
        array17 = arrayOfStrings17.map({
            DataModel(body: $0)
        })
        array18 = arrayOfStrings18.map({
            DataModel(body: $0)
        })
        array19 = arrayOfStrings19.map({
            DataModel(body: $0)
        })
        
       
        
        tableView.reloadData()
    }
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
    
    @IBAction func atslban(_ sender: Any) {
        let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "m5tbrtna7olal3alm") as! m5tbrtna7olal3alm
        present(photoViewController1, animated: false, completion: nil)
    }
    
    @IBAction func tlbzearhmnzleh(_ sender: Any) {
        let photoViewController1 = storyboard?.instantiateViewController(withIdentifier: "2222") as! zearhmnzleh
        present(photoViewController1, animated: false, completion: nil)
    }
    
    
    @IBAction func tfaselakser(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    
    
}

extension ViewControllera: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if inits == 0 {
             return arrayOfStrings.count
        }
        else  if inits == 1{
            return arrayOfStrings1.count
        }  else  if inits == 2 {
            return arrayOfStrings2.count
        }  else  if  inits == 3 {
            return arrayOfStrings3.count
        }  else  if inits == 4 {
            return arrayOfStrings4.count
        }  else  if inits == 5 {
            return arrayOfStrings5.count
        }  else  if inits == 6 {
            return arrayOfStrings6.count
        }  else  if inits ==  7 {
            return arrayOfStrings7.count
        }  else  if inits == 8 {
            return arrayOfStrings8.count
        }  else  if inits == 9 {
            return arrayOfStrings9.count
        }  else  if inits == 10 {
            return arrayOfStrings10.count
        }  else  if inits == 11 {
            return arrayOfStrings11.count
        }  else  if inits == 12 {
            return arrayOfStrings12.count
        }  else  if inits == 13 {
            return arrayOfStrings13.count
        }  else  if inits == 14 {
            return arrayOfStrings14.count
        }  else  if inits == 15 {
            return arrayOfStrings15.count
        }  else  if inits == 16 {
            return arrayOfStrings16.count
        }  else  if inits == 17 {
            return arrayOfStrings17.count
        }  else  if inits == 18 {
            return arrayOfStrings18.count
        }  else  {
            return arrayOfStrings19.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTabelViewCel
//         labelarb.text = lable1[indexPath.row]
        if inits == 0 {
            labelarb.text =  "فحوصات داء السكري"
            labelnamber.text = "( ٣ ) فحصا متوفرا "
             cell.labelsdata =  "فحوصات داء السكري"
            myimage.image =  UIImage(named: "diabetes")!
            cell.model = array[indexPath.row]
            cell.model1 = newarraya[indexPath.row]
            
            cell.model2 = newarrays[indexPath.row]
//            cell.model2 = newarraya1[indexPath.row]
             cell.datawebview = urle[indexPath.row]
        } else if inits == 1 {
              labelarb.text =  "فحوصات ضغط الدم"
              labelnamber.text = "( ٢١ ) فحصا متوفرا "
            myimage.image =  UIImage(named: "hypertension")!
            cell.model = array1[indexPath.row]
            cell.model1 = newarraya1[indexPath.row]
            cell.model2 = newarrays1[indexPath.row]
             cell.datawebview = urle1[indexPath.row]
             cell.labelsdata = "فحوصات ضغط الدم"
        } else if inits == 2 {
              labelarb.text =  "فحوصات فقر الدم"
            labelnamber.text = "( ٢٢ ) فحصا متوفرا "
            myimage.image = UIImage(named: "anemia")!
            cell.model = array2[indexPath.row]
            cell.model1 = newarraya2[indexPath.row]
            cell.model2 = newarrays2[indexPath.row]
              cell.datawebview = urle2[indexPath.row]
             cell.labelsdata = "فحوصات فقر الدم"
        } else if inits == 3 {
              labelarb.text =  "فحوصات الغدة الدرقية"
              labelnamber.text = "فحصا متوفرا ( ٣ )"
            myimage.image = UIImage(named: "thyroid")!
            cell.model = array3[indexPath.row]
            cell.model1 = newarraya3[indexPath.row]
            cell.model2 = newarrays3[indexPath.row]
              cell.datawebview = urle3[indexPath.row]
             cell.labelsdata = "فحوصات الغدة الدرقية"
        } else if inits == 4 {
              labelarb.text =  "فحوصات السرطان"
              labelnamber.text = "فحصا متوفرا ( ١٤ )"
            myimage.image = UIImage(named: "cancer")!
            cell.model = array4[indexPath.row]
            cell.model1 = newarraya4[indexPath.row]
            cell.model2 = newarrays4[indexPath.row]
              cell.datawebview = urle4[indexPath.row]
             cell.labelsdata =  "فحوصات السرطان"
        } else if inits == 5 {
              labelarb.text =  "فحوصات أمراض القلب"
              labelnamber.text = "فحصا متوفرا ( ٢١ )"
            myimage.image =  UIImage(named: "heart")!
            cell.model = array5[indexPath.row]
            cell.model1 = newarraya5[indexPath.row]
            cell.model2 = newarrays5[indexPath.row]
             cell.datawebview = urle5[indexPath.row]
             cell.labelsdata = "فحوصات أمراض القلب"
        } else if inits == 6 {
             labelarb.text =  "فحوصات أمراض الكلى"
              labelnamber.text = "فحصا متوفرا ( ١١ )"
            myimage.image = UIImage(named: "kidney")!
            cell.model = array6[indexPath.row]
            cell.model1 = newarraya6[indexPath.row]
            cell.model2 = newarrays6[indexPath.row]
             cell.datawebview = urle6[indexPath.row]
             cell.labelsdata = "فحوصات أمراض الكلى"
        } else if inits == 7 {
             labelarb.text =  "فحوصات أمراض الكبد"
              labelnamber.text = "فحصا متوفرا ( ٣ )"
            myimage.image =  UIImage(named: "liver")!
            cell.model = array7[indexPath.row]
            cell.model1 = newarraya7[indexPath.row]
            cell.model2 = newarrays7[indexPath.row]
              cell.datawebview = urle7[indexPath.row]
             cell.labelsdata = "فحوصات أمراض الكبد"
        } else if inits == 8 {
             labelarb.text =  "فحوصات التهاب الكبد"
              labelnamber.text = "فحصا متوفرا ( ١٣ )"
            myimage.image =  UIImage(named: "hepatitis")!
            cell.model = array8[indexPath.row]
            cell.model1 = newarraya8[indexPath.row]
            cell.model2 = newarrays8[indexPath.row]
            cell.datawebview = urle8[indexPath.row]
             cell.labelsdata = "فحوصات التهاب الكبد"
        } else if inits == 9 {
             labelarb.text =  "فحوصات أمراض العظام"
              labelnamber.text = "فحصا متوفرا ( ٣ )"
            myimage.image = UIImage(named: "bone")!
            cell.model = array9[indexPath.row]
            cell.model1 = newarraya9[indexPath.row]
            cell.model2 = newarrays9[indexPath.row]
             cell.datawebview = urle9[indexPath.row]
             cell.labelsdata = "فحوصات أمراض العظام"
        } else if inits == 10 {
             labelarb.text =  "فحوصات أمراض المفاصل"
              labelnamber.text = "فحصا متوفرا ( ٢٣ )"
            myimage.image =  UIImage(named: "joints")!
            cell.model = array10[indexPath.row]
            cell.model1 = newarraya10[indexPath.row]
            cell.model2 = newarrays10[indexPath.row]
             cell.datawebview = urle10[indexPath.row]
             cell.labelsdata = "فحوصات أمراض المفاصل"
        } else if inits == 11 {
             labelarb.text =  "فحوصات مشاكل الهضم"
              labelnamber.text = "فحصا متوفرا ( ١٢ )"
            myimage.image =  UIImage(named: "digestion")!
            cell.model = array11[indexPath.row]
            cell.model1 = newarraya11[indexPath.row]
            cell.model2 = newarrays11[indexPath.row]
              cell.datawebview = urle11[indexPath.row]
             cell.labelsdata = "فحوصات مشاكل الهضم"
        } else if inits == 12 {
             labelarb.text =  "فحوصات الحمى"
              labelnamber.text = "فحصا متوفرا ( ١٢ )"
            myimage.image =  UIImage(named: "fever")!
            cell.model = array12[indexPath.row]
            cell.model1 = newarraya12[indexPath.row]
            cell.model2 = newarrays12[indexPath.row]
            cell.datawebview = urle12[indexPath.row]
             cell.labelsdata = "فحوصات الحمى"
        } else if inits == 13 {
             labelarb.text =  "فحوصات الصفراء/اليرقان"
              labelnamber.text = "فحصا متوفرا ( ١٢ )"
            myimage.image = UIImage(named: "jaundice")!
            cell.model = array13[indexPath.row]
            cell.model1 = newarraya13[indexPath.row]
            cell.model2 = newarrays13[indexPath.row]
              cell.datawebview = urle13[indexPath.row]
             cell.labelsdata = "فحوصات الصفراء/اليرقان"
        } else if inits == 14 {
             labelarb.text =  "فحوصات خلل الهرمونات"
              labelnamber.text = "فحصا متوفرا ( ٥ )"
            myimage.image =  UIImage(named: "hormones")!
            cell.model = array14[indexPath.row]
            cell.model1 = newarraya14[indexPath.row]
            cell.model2 = newarrays14[indexPath.row]
              cell.datawebview = urle14[indexPath.row]
             cell.labelsdata = "فحوصات خلل الهرمونات"
        } else if inits == 15 {
             labelarb.text =  "فحوصات العدوى"
              labelnamber.text = "فحصا متوفرا ( ١١ )"
            myimage.image = UIImage(named: "infections")!
            cell.model = array15[indexPath.row]
            cell.model1 = newarraya15[indexPath.row]
            cell.model2 = newarrays15[indexPath.row]
             cell.datawebview = urle15[indexPath.row]
             cell.labelsdata =  "فحوصات العدوى"
        } else if inits == 16 {
             labelarb.text =  "فحوصات الأمراض الجنسية"
              labelnamber.text = "فحصا متوفرا ( ٤ )"
            myimage.image = UIImage(named: "std")!
            cell.model = array16[indexPath.row]
            cell.model1 = newarraya16[indexPath.row]
            cell.model2 = newarrays16[indexPath.row]
             cell.datawebview = urle16[indexPath.row]
             cell.labelsdata = "فحوصات الأمراض الجنسية"
        } else if inits == 17 {
             labelarb.text =  "فحوصات نقص الفيتامينات"
              labelnamber.text = "فحصا متوفرا ( ٦ )"
            myimage.image =  UIImage(named: "vitamins")!
            cell.model = array17[indexPath.row]
            cell.model1 = newarraya17[indexPath.row]
            cell.model2 = newarrays17[indexPath.row]
              cell.datawebview = urle17[indexPath.row]
             cell.labelsdata = "فحوصات نقص الفيتامينات"
        } else if inits == 18 {
             labelarb.text =  "فحوصات السمنة"
              labelnamber.text = "فحصا متوفرا ( ١٧ )"
            myimage.image = UIImage(named: "obesity")!
            cell.model = array18[indexPath.row]
            cell.model1 = newarraya18[indexPath.row]
            cell.model2 = newarrays18[indexPath.row]
             cell.datawebview = urle18[indexPath.row]
             cell.labelsdata =  "فحوصات السمنة"
        }  else if inits == 19 {
             labelarb.text =  "فحوصات الحمل"
              labelnamber.text = "فحصا متوفرا ( ٢٧ )"
            myimage.image =  UIImage(named: "pregnancy")
            cell.model = array19[indexPath.row]
            cell.model1 = newarraya19[indexPath.row]
            cell.model2 = newarrays19[indexPath.row]
              cell.datawebview = urle19[indexPath.row]
             cell.labelsdata = "فحوصات الحمل"
        }
        cell.delegate = self

        
        return cell
    }
}















extension ViewControllera: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 270.0
    }
}



extension ViewControllera: MyTableViewCellDelegate {
    
    func webviewaction(datawebview: String, datalabel: String) {
         if CheckInternet.Connection() {
    let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webviewsecond") as!webviewsecond
        nextVC.dataweb = datawebview
        nextVC.labelss = datalabel
        present(nextVC, animated: true, completion: nil)
    } else {
    let alert = UIAlertController(title: nil, message: "هاتفك غير متصل بالانترنت", preferredStyle: .actionSheet)
    
    //            present(alert, animated: true, completion: nil)
    
    let when = DispatchTime.now() + 3
    DispatchQueue.main.asyncAfter(deadline: when){
    alert.dismiss(animated: true , completion: nil)
    alert.view.tintColor = UIColor.black
    alert.view.backgroundColor = UIColor.cyan  // change background color
    alert.view.layer.cornerRadius = 25
    }
    }
    }
    
   
    
    
    
    func toggleModel(_ model: DataModel, cell: UITableViewCell) {
        model.isExpanded = !model.isExpanded
        if let indexPath = tableView.indexPath(for: cell) {
            tableView.reloadRows(at: [indexPath], with: .automatic)
        } else {
            tableView.reloadData()
        }
    }
}
