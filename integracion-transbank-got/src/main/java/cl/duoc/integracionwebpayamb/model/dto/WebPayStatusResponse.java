//prueba
package cl.duoc.integracionwebpayamb.model.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class WebPayStatusResponse {

    @JsonProperty("vci")
    private String vci;

    @JsonProperty("amount")
    private double amount;

    @JsonProperty("status")
    private String status;

    @JsonProperty("buy_order")
    private String buyOrder;

    @JsonProperty("session_id")
    private String sessionId;

    @JsonProperty("card_number")
    private String cardNumber;

    @JsonProperty("accounting_date")
    private String accountingDate;

    @JsonProperty("transaction_date")
    private String transactionDate;

    @JsonProperty("authorization_code")
    private String authorizationCode;

    @JsonProperty("payment_type_code")
    private String paymentTypeCode;

    @JsonProperty("response_code")
    private byte responseCode;

    @JsonProperty("installments_number")
    private byte installmentsNumber;

    @JsonProperty("card_detail")
    private String cardDetail;

    public String getVci() {
        return vci;
    }

    public void setVci(String vci) {
        this.vci = vci;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getBuyOrder() {
        return buyOrder;
    }

    public void setBuyOrder(String buyOrder) {
        this.buyOrder = buyOrder;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getAccountingDate() {
        return accountingDate;
    }

    public void setAccountingDate(String accountingDate) {
        this.accountingDate = accountingDate;
    }

    public String getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(String transactionDate) {
        this.transactionDate = transactionDate;
    }

    public String getAuthorizationCode() {
        return authorizationCode;
    }

    public void setAuthorizationCode(String authorizationCode) {
        this.authorizationCode = authorizationCode;
    }

    public String getPaymentTypeCode() {
        return paymentTypeCode;
    }

    public void setPaymentTypeCode(String paymentTypeCode) {
        this.paymentTypeCode = paymentTypeCode;
    }

    public byte getResponseCode() {
        return responseCode;
    }

    public void setResponseCode(byte responseCode) {
        this.responseCode = responseCode;
    }

    public byte getInstallmentsNumber() {
        return installmentsNumber;
    }

    public void setInstallmentsNumber(byte installmentsNumber) {
        this.installmentsNumber = installmentsNumber;
    }

    public String getCardDetail() {
        return cardDetail;
    }

    public void setCardDetail(String cardDetail) {
        this.cardDetail = cardDetail;
    }

}