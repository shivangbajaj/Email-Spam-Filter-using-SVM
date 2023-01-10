# Email Spam Filter using SVM

Many email services today provide spam filters that are able to classify emails into spam and non-spam email with high accuracy. In this project we will use SVMs to build our own spam filter. We will be training a classifier to classify whether a given email, is spam or non-spam. In particular, we need to convert each email into a feature vector. The dataset included for this project is based on a subset of the [SpamAssassin Public Corpus](https://spamassassin.apache.org/old/publiccorpus/). For the purpose of this project, we will only be using the body of the email (excluding the email headers).

We have implemented the following email preprocessing and normalization steps:
- Lower-casing: The entire email is converted into lower case, so that captialization is ignored (e.g., IndIcaTE is treated the same as Indicate).
- Stripping HTML: All HTML tags are removed from the emails. Many emails often come with HTML formatting; we remove all the HTML tags, so that only the content remains.
- Normalizing URLs: All URLs are replaced with the text “httpaddr”.
- Normalizing Email Addresses: All email addresses are replaced with the text “emailaddr”.
- Normalizing Numbers: All numbers are replaced with the text “number”.
- Normalizing Dollars: All dollar signs ($) are replaced with the text “dollar”.
- Word Stemming: Words are reduced to their stemmed form. For example, “discount”, “discounts”, “discounted” and “discounting” are all replaced with “discount”. Sometimes, the Stemmer actually strips off additional characters from the end, so “include”, “includes”, “included”, and “including” are all replaced with “includ".
- Removal of non-words: Non-words and punctuation have been removed. All white spaces (tabs, newlines, spaces) have all been trimmed to a single space character.

We load a preprocessed training dataset that will be used to train a SVM classifier. `spamTrain.mat` contains 4000 training examples of spam and non-spam email, while `spamTest.mat` contains 1000 test examples. Each original email was processed using the `processEmail` and `emailFeatures` functions and converted into a vector.

After loading the dataset, we will proceed to train a SVM to classify between spam and non-spam emails. Once the training completes, you should see that the classifier gets a training accuracy of about `99.8%` and a test accuracy of about `98.5%`.