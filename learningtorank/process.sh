def extract_qid(qid_str):
    return qid_str[4:]


def extract_val(feat):
    return feat.split(':')[1]


def df_transform(df):
    df[1] = df[1].apply(extract_qid)
    df[df.columns[2:-1]] = df[df.columns[2:-1]].applymap(extract_val)
    df = df.drop(138, axis=1)
    return df
