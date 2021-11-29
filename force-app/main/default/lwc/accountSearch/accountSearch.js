import { LightningElement, track } from 'lwc';
import searchAccounts from '@salesforce/apex/AccountSearch.searchAccounts';

const DELAY = 350;

export default class AccountSearch extends LightningElement {
    @track accounts;
    @track error;

    handleKeyChange(event) {
        window.clearTimeout(this.delayTimeout);
        const search = event.target.value;

        this.delayTimeout = setTimeout(() => {
            searchAccounts({ search })
                .then(result => {
                    this.accounts = result;
                    this.error = undefined;
                })
                .catch(error => {
                    this.error = error;
                    this.accounts = undefined;
                });
        }, DELAY);
    }
}