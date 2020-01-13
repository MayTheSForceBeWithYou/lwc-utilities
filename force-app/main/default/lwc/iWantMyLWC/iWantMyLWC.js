import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/IWantMyLWC.getAccounts';
import getIndustryOptions from '@salesforce/apex/IWantMyLWC.getIndustryOptions';

export default class IWantMyLWC extends LightningElement {
    @wire(getAccounts) accts;
    @wire(getIndustryOptions) industryOptions;
}